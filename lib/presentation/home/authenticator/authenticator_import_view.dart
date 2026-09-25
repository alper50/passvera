import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:passvera/application/authenticatorImportBloc/authenticator_import_bloc.dart';
import 'package:passvera/domain/authenticator_entry.dart';
import 'package:passvera/domain/otp_migration_parser.dart';
import 'package:passvera/injection.dart';
import 'package:passvera/presentation/core/theme/colors.dart';
import 'package:passvera/presentation/core/theme/text_styles.dart';
import 'package:passvera/presentation/core/utils/failure_messages.dart';
import 'package:passvera/presentation/core/widgets/form_dialog.dart';
import 'package:passvera/presentation/core/widgets/my_snackbar.dart';

/// Preview of a Google Authenticator export: scan every QR of the export,
/// pick accounts, import. Pops with `true` when something was imported.
@RoutePage()
class AuthenticatorImportView extends StatelessWidget {
  const AuthenticatorImportView({super.key, required this.initialQr});

  /// The `otpauth-migration://` QR that opened this screen.
  final String initialQr;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<AuthenticatorImportBloc>()
        ..add(const AuthenticatorImportEvent.started())
        ..add(AuthenticatorImportEvent.qrScanned(initialQr)),
      child: _ImportBody(initialQr: initialQr),
    );
  }
}

class _ImportBody extends StatefulWidget {
  const _ImportBody({required this.initialQr});

  final String initialQr;

  @override
  State<_ImportBody> createState() => _ImportBodyState();
}

class _ImportBodyState extends State<_ImportBody> {
  final MobileScannerController _controller = MobileScannerController(
    detectionSpeed: DetectionSpeed.normal,
    facing: CameraFacing.back,
    formats: const [BarcodeFormat.qrCode],
  );

  /// The scanner reports the same code on every frame; dispatch each once.
  late final Set<String> _dispatched = {widget.initialQr};

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onDetect(BarcodeCapture capture) {
    final bloc = context.read<AuthenticatorImportBloc>();
    for (final barcode in capture.barcodes) {
      final raw = barcode.rawValue?.trim();
      if (raw == null || !OtpMigrationParser.isMigrationUri(raw)) continue;
      if (_dispatched.add(raw)) {
        bloc.add(AuthenticatorImportEvent.qrScanned(raw));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<AuthenticatorImportBloc, AuthenticatorImportState>(
          listenWhen: (p, c) =>
              p.scanFailureOrSuccess != c.scanFailureOrSuccess,
          listener: (context, state) {
            state.scanFailureOrSuccess.fold(
              () {},
              (either) => either.fold(
                (failure) => showMySnackBar(
                  isError: true,
                  context: context,
                  message: failure.message,
                ),
                (_) {},
              ),
            );
          },
        ),
        BlocListener<AuthenticatorImportBloc, AuthenticatorImportState>(
          listenWhen: (p, c) => !p.allBatchesScanned && c.allBatchesScanned,
          listener: (context, state) => _controller.stop(),
        ),
        BlocListener<AuthenticatorImportBloc, AuthenticatorImportState>(
          listenWhen: (p, c) =>
              p.importFailureOrSuccess != c.importFailureOrSuccess,
          listener: (context, state) {
            state.importFailureOrSuccess.fold(
              () {},
              (either) => either.fold(
                (failure) => showMySnackBar(
                  isError: true,
                  context: context,
                  message: failure.message,
                ),
                (added) {
                  showMySnackBar(
                    context: context,
                    message: added == 1
                        ? '1 account imported'
                        : '$added accounts imported',
                  );
                  context.router.pop(true);
                },
              ),
            );
          },
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Import from Google'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new_rounded),
            onPressed: () => context.router.pop(false),
          ),
        ),
        body: SafeArea(
          child: BlocBuilder<AuthenticatorImportBloc, AuthenticatorImportState>(
            builder: (context, state) {
              final count = state.selectedIds.length;
              return Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  if (!state.allBatchesScanned)
                    _ScannerPanel(controller: _controller, onDetect: _onDetect),
                  _ImportSummary(state: state),
                  Expanded(
                    child: state.candidates.isEmpty
                        ? const Center(
                            child: Padding(
                              padding: EdgeInsets.all(24),
                              child: Text(
                                'No accounts to import yet',
                                style: MyTextStyles.bodyLarge,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        : ListView.builder(
                            padding: const EdgeInsets.only(bottom: 12),
                            itemCount: state.candidates.length,
                            itemBuilder: (context, index) {
                              final entry = state.candidates[index];
                              return _CandidateTile(
                                entry: entry,
                                alreadyAdded:
                                    state.existingIds.contains(entry.id),
                                selected: state.selectedIds.contains(entry.id),
                              );
                            },
                          ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 8, 20, 16),
                    child: MyFormButton(
                      title: state.isSaving
                          ? 'Importing…'
                          : count == 0
                              ? 'Nothing selected'
                              : 'Import $count',
                      onPressed: count == 0 || state.isSaving
                          ? null
                          : () => context.read<AuthenticatorImportBloc>().add(
                                const AuthenticatorImportEvent
                                    .importConfirmed(),
                              ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

class _ScannerPanel extends StatelessWidget {
  const _ScannerPanel({required this.controller, required this.onDetect});

  final MobileScannerController controller;
  final void Function(BarcodeCapture) onDetect;

  @override
  Widget build(BuildContext context) {
    // Leave room for the account list on short screens.
    final height =
        (MediaQuery.sizeOf(context).height * 0.22).clamp(120.0, 200.0);
    return Container(
      height: height,
      margin: const EdgeInsets.fromLTRB(20, 8, 20, 0),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: MyColors.ink,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: MyColors.ink, width: 3),
      ),
      child: MobileScanner(
        controller: controller,
        onDetect: onDetect,
        errorBuilder: (context, error) => Center(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              error.errorDetails?.message ??
                  'Camera unavailable. Check permission and try again.',
              style: MyTextStyles.bodyLarge.copyWith(
                color: MyColors.surfaceWhite,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}

class _ImportSummary extends StatelessWidget {
  const _ImportSummary({required this.state});

  final AuthenticatorImportState state;

  @override
  Widget build(BuildContext context) {
    final batchSize = state.batchSize;
    final lines = <String>[
      if (batchSize != null && batchSize > 1)
        state.allBatchesScanned
            ? 'All $batchSize QR codes scanned'
            : 'Scanned ${state.scannedBatches.length} of $batchSize QR codes. '
                'Scan the rest to see every account.',
      if (state.skippedCount > 0)
        '${state.skippedCount} skipped: counter-based (HOTP) codes '
            'are not supported.',
    ];
    if (lines.isEmpty) return const SizedBox(height: 12);

    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 12, 20, 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          for (final line in lines)
            Padding(
              padding: const EdgeInsets.only(bottom: 4),
              child: Text(line, style: MyTextStyles.bodySmallBold),
            ),
        ],
      ),
    );
  }
}

class _CandidateTile extends StatelessWidget {
  const _CandidateTile({
    required this.entry,
    required this.alreadyAdded,
    required this.selected,
  });

  final AuthenticatorEntry entry;
  final bool alreadyAdded;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 6, 20, 6),
      child: Opacity(
        opacity: alreadyAdded ? 0.5 : 1,
        child: Material(
          color: selected ? MyColors.brand : MyColors.surfaceWhite,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: const BorderSide(color: MyColors.ink, width: 2.5),
          ),
          clipBehavior: Clip.antiAlias,
          child: InkWell(
            onTap: alreadyAdded
                ? null
                : () => context.read<AuthenticatorImportBloc>().add(
                      AuthenticatorImportEvent.selectionToggled(entry.id),
                    ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
              child: Row(
                children: [
                  _CheckBox(checked: selected),
                  const SizedBox(width: 14),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          entry.displayTitle,
                          style: MyTextStyles.headline3Bold,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        if (entry.displaySubtitle.isNotEmpty)
                          Text(
                            entry.displaySubtitle,
                            style: MyTextStyles.bodySmall,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        if (alreadyAdded)
                          const Text(
                            'Already in Passvera',
                            style: MyTextStyles.bodySmallBold,
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _CheckBox extends StatelessWidget {
  const _CheckBox({required this.checked});

  final bool checked;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 160),
      width: 26,
      height: 26,
      decoration: BoxDecoration(
        color: checked ? MyColors.ink : MyColors.surfaceWhite,
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: MyColors.ink, width: 2.5),
      ),
      child: checked
          ? const Icon(Icons.check, size: 18, color: MyColors.brand)
          : null,
    );
  }
}
