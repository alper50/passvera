import 'package:flutter/material.dart';
import 'package:passvera/domain/i_lock_repository.dart';
import 'package:passvera/initialization.dart';
import 'package:passvera/injection.dart';
import 'package:passvera/presentation/core/route/route.gr.dart';
import 'package:passvera/presentation/core/theme/theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await InitializeApp.initalize();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  final _appRouter = MyRouter();
  bool _wasPaused = false;
  bool _isRelocking = false;

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
    if (state == AppLifecycleState.paused) {
      _wasPaused = true;
      return;
    }

    if (state == AppLifecycleState.resumed && _wasPaused) {
      _wasPaused = false;
      _relockIfNeeded();
    }
  }

  Future<void> _relockIfNeeded() async {
    if (_isRelocking) return;
    _isRelocking = true;
    try {
      final currentName = _appRouter.current.name;
      const skipRoutes = {
        LockView.name,
        SplashView.name,
        OnboardView.name,
      };
      if (skipRoutes.contains(currentName)) {
        return;
      }

      final result = await getIt<ILockRepository>().isPinSet();
      final shouldLock = result.fold((_) => false, (isSet) => isSet);
      if (!shouldLock) return;

      await _appRouter.pushAndPopUntil(
        const LockView(),
        predicate: (_) => false,
      );
    } finally {
      _isRelocking = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: MyThemeData.lightheme,
      debugShowCheckedModeBanner: false,
      routeInformationParser: _appRouter.defaultRouteParser(),
      routerDelegate: _appRouter.delegate(),
      builder: (context, child) => child!,
    );
  }
}
