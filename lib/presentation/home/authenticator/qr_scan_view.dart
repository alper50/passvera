import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:passvera/application/authenticatorBloc/authenticator_bloc.dart';
import 'package:passvera/domain/errors/authenticator_failures.dart';
import 'package:passvera/injection.dart';
import 'package:passvera/presentation/core/theme/colors.dart';
import 'package:passvera/presentation/core/theme/text_styles.dart';
import 'package:passvera/presentation/core/widgets/my_snackbar.dart';

class QrScanView extends StatelessWidget {
  const QrScanView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<AuthenticatorBloc>(),
      child: const _QrScanBody(),
    );
  }
}

class _QrScanBody extends StatefulWidget {
  const _QrScanBody();

  @override
  State<_QrScanBody> createState() => _QrScanBodyState();
}

class _QrScanBodyState extends State<_QrScanBody> {
  final MobileScannerController _controller = MobileScannerController(
    detectionSpeed: DetectionSpeed.normal,
    facing: CameraFacing.back,
    formats: const [BarcodeFormat.qrCode],
  );
  bool _handled = false;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  String _failureMessage(AuthenticatorFailure failure) {
    return failure.map(
      unexpected: (e) => e.toString(),
      invalidQr: () => 'Invalid authenticator QR',
      unsupportedType: () => 'Only TOTP QR codes are supported',
      keyAlreadyUsed: () => 'This account is already added',
      emptySecret: () => 'QR has no secret',
      permissionDenied: () => 'Camera permission denied',
    );
  }

  Future<void> _onDetect(BarcodeCapture capture) async {
    if (_handled) return;
    final raw = capture.barcodes
        .map((b) => b.rawValue)
        .whereType<String>()
        .map((v) => v.trim())
        .firstWhere(
          (v) => v.toLowerCase().startsWith('otpauth://'),
          orElse: () => '',
        );
    if (raw.isEmpty) return;

    _handled = true;
    await _controller.stop();
    if (!mounted) return;
    context
        .read<AuthenticatorBloc>()
        .add(AuthenticatorEvent.addFromUri(uri: raw));
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthenticatorBloc, AuthenticatorState>(
      listenWhen: (previous, current) =>
          previous.addFailureOrSuccess != current.addFailureOrSuccess,
      listener: (context, state) {
        state.addFailureOrSuccess.fold(
          () {},
          (either) => either.fold(
            (failure) {
              showMySnackBar(
                isError: true,
                context: context,
                message: _failureMessage(failure),
              );
              _handled = false;
              _controller.start();
            },
            (_) {
              showMySnackBar(
                isError: false,
                context: context,
                message: 'Authenticator added',
              );
              context.router.pop(true);
            },
          ),
        );
      },
      child: Scaffold(
        backgroundColor: MyColors.ink,
        appBar: AppBar(
          backgroundColor: MyColors.ink,
          foregroundColor: MyColors.surfaceWhite,
          title: const Text(
            'Scan QR',
            style: MyTextStyles.headline3Bold,
          ),
        ),
        body: Stack(
          fit: StackFit.expand,
          children: [
            MobileScanner(
              controller: _controller,
              onDetect: _onDetect,
              errorBuilder: (context, error) {
                return Center(
                  child: Padding(
                    padding: const EdgeInsets.all(24),
                    child: Text(
                      error.errorDetails?.message ??
                          'Camera unavailable. Check permission and try again.',
                      style: MyTextStyles.bodyLarge.copyWith(
                        color: MyColors.surfaceWhite,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                );
              },
            ),
            IgnorePointer(
              child: Center(
                child: Container(
                  width: 240,
                  height: 240,
                  decoration: BoxDecoration(
                    border: Border.all(color: MyColors.brand, width: 3),
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
            ),
            const Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.fromLTRB(24, 0, 24, 48),
                child: Text(
                  'Point at an otpauth TOTP QR code',
                  style: MyTextStyles.bodyLarge,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
