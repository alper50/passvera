import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:passvera/application/backupSyncBloc/backup_sync_bloc.dart';
import 'package:passvera/application/sessionBloc/session_bloc.dart';
import 'package:passvera/initialization.dart';
import 'package:passvera/injection.dart';
import 'package:passvera/presentation/core/route/route.dart';
import 'package:passvera/presentation/core/theme/theme.dart';
import 'package:passvera/presentation/core/widgets/privacy_cover.dart';
import 'package:passvera/presentation/core/widgets/startup_failure_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await InitializeApp.initalize();
  final storageReady = await InitializeApp.prepareStorage();
  runApp(storageReady ? const MyApp() : const StartupFailureApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt<SessionBloc>()),
        // Automatic Drive backup lives for the whole app session.
        BlocProvider(
          create: (_) =>
              getIt<BackupSyncBloc>()..add(const BackupSyncEvent.started()),
          lazy: false,
        ),
      ],
      child: const _AppView(),
    );
  }
}

class _AppView extends StatefulWidget {
  const _AppView();

  @override
  State<_AppView> createState() => _AppViewState();
}

class _AppViewState extends State<_AppView> with WidgetsBindingObserver {
  final _appRouter = MyRouter();

  /// Screens that already gate access; relocking there is pointless.
  static const _unlockedFreeRoutes = {
    LockRoute.name,
    SplashRoute.name,
    OnboardRoute.name,
  };

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    final session = context.read<SessionBloc>();
    switch (state) {
      case AppLifecycleState.resumed:
        session.add(const SessionEvent.resumed());
        context.read<BackupSyncBloc>().add(const BackupSyncEvent.appResumed());
      case AppLifecycleState.inactive:
        // iOS snapshots the app switcher right after inactive. Android relies
        // on FLAG_SECURE, and covering there would flicker on every shade pull.
        if (defaultTargetPlatform == TargetPlatform.iOS) {
          session.add(const SessionEvent.obscured());
        }
      case AppLifecycleState.hidden:
      case AppLifecycleState.paused:
        session.add(const SessionEvent.backgrounded());
      case AppLifecycleState.detached:
        break;
    }
  }

  void _showLock() {
    if (_unlockedFreeRoutes.contains(_appRouter.current.name)) return;
    _appRouter.pushAndPopUntil(
      const LockRoute(),
      predicate: (_) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SessionBloc, SessionState>(
      listenWhen: (previous, current) =>
          !previous.shouldLock && current.shouldLock,
      listener: (context, state) {
        _showLock();
        context.read<SessionBloc>().add(const SessionEvent.lockHandled());
      },
      child: MaterialApp.router(
        theme: MyThemeData.lightheme,
        debugShowCheckedModeBanner: false,
        routerConfig: _appRouter.config(),
        builder: (context, child) => Stack(
          fit: StackFit.expand,
          children: [
            child!,
            BlocBuilder<SessionBloc, SessionState>(
              buildWhen: (previous, current) =>
                  previous.isObscured != current.isObscured,
              builder: (context, state) => state.isObscured
                  ? const Positioned.fill(child: PrivacyCover())
                  : const SizedBox.shrink(),
            ),
          ],
        ),
      ),
    );
  }
}
