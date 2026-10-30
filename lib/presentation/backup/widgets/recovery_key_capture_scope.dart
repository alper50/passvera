import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:passvera/application/screenCaptureBloc/screen_capture_bloc.dart';
import 'package:passvera/injection.dart';
import 'package:passvera/presentation/core/widgets/my_snackbar.dart';

/// Wraps the recovery words: screenshots are allowed while [child] is shown
/// (where the platform reports them, see IScreenCaptureRepository), and
/// each one is followed by a warning.
class RecoveryKeyCaptureScope extends StatelessWidget {
  const RecoveryKeyCaptureScope({super.key, required this.child});

  final Widget child;

  static const warning = 'Screenshot saved. Anyone with this image can open '
      'your backup: keep it somewhere safe and delete it from your photos.';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          getIt<ScreenCaptureBloc>()..add(const ScreenCaptureEvent.started()),
      child: BlocListener<ScreenCaptureBloc, ScreenCaptureState>(
        listenWhen: (previous, current) =>
            current.captureCount > previous.captureCount,
        listener: (context, _) => showMySnackBar(
          context: context,
          message: warning,
          isError: true,
          duration: const Duration(seconds: 8),
        ),
        child: child,
      ),
    );
  }
}
