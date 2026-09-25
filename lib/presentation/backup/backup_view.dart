import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:passvera/application/backupSettingsBloc/backup_settings_bloc.dart';
import 'package:passvera/application/backupSyncBloc/backup_sync_bloc.dart';
import 'package:passvera/domain/backup/recovery_key.dart';
import 'package:passvera/domain/lock_constants.dart';
import 'package:passvera/injection.dart';
import 'package:passvera/presentation/backup/widgets/recovery_word_fields.dart';
import 'package:passvera/presentation/backup/widgets/recovery_words_grid.dart';
import 'package:passvera/presentation/core/route/route.dart';
import 'package:passvera/presentation/core/theme/text_styles.dart';
import 'package:passvera/presentation/core/utils/failure_messages.dart';
import 'package:passvera/presentation/core/utils/relative_time.dart';
import 'package:passvera/presentation/core/widgets/confirm_dialog.dart';
import 'package:passvera/presentation/core/widgets/form_dialog.dart';
import 'package:passvera/presentation/core/widgets/my_circular_progress.dart';
import 'package:passvera/presentation/core/widgets/my_custom_container.dart';
import 'package:passvera/presentation/core/widgets/my_snackbar.dart';
import 'package:passvera/presentation/core/widgets/pin_pad.dart';

/// Google Drive backup: setup, status and key management.
@RoutePage()
class BackupView extends StatelessWidget {
  const BackupView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          getIt<BackupSettingsBloc>()..add(const BackupSettingsEvent.loaded()),
      child: const _BackupBody(),
    );
  }
}

/// Status sub-panels that do not change backup state.
enum _Panel { main, revealKey, testKey }

class _BackupBody extends StatefulWidget {
  const _BackupBody();

  @override
  State<_BackupBody> createState() => _BackupBodyState();
}

class _BackupBodyState extends State<_BackupBody> {
  _Panel _panel = _Panel.main;
  String _pin = '';
  List<String> _words = const [];

  BackupSettingsBloc get _bloc => context.read<BackupSettingsBloc>();

  void _open(_Panel panel) {
    setState(() {
      _panel = panel;
      _pin = '';
      _words = const [];
    });
    if (panel == _Panel.revealKey && !_bloc.state.isPinSet) {
      _bloc.add(const BackupSettingsEvent.revealRequested());
    }
  }

  void _closePanel() {
    _bloc.add(const BackupSettingsEvent.revealHidden());
    _open(_Panel.main);
  }

  void _onPin(String value) {
    setState(() => _pin = value);
    if (value.length == kAppPinLength) {
      _bloc.add(BackupSettingsEvent.revealRequested(pin: value));
    }
  }

  Future<void> _turnOff() async {
    final off = await showConfirmDialog(
      context: context,
      title: 'Turn off backup?',
      message: 'Automatic backups stop and this phone forgets the recovery '
          'key. Your vault stays on this phone.',
      confirmLabel: 'Turn off',
    );
    if (!off || !mounted) return;
    final deleteRemote = await showConfirmDialog(
      context: context,
      title: 'Delete Drive backups too?',
      message: 'Delete removes every Passvera backup from your Google '
          'account. Keep leaves them there (still encrypted).',
      confirmLabel: 'Delete',
      cancelLabel: 'Keep',
    );
    if (!mounted) return;
    _bloc.add(BackupSettingsEvent.disableRequested(deleteRemote: deleteRemote));
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<BackupSettingsBloc, BackupSettingsState>(
          listenWhen: (p, c) => p.failure != c.failure,
          listener: (context, state) => state.failure.fold(
            () {},
            (f) => showMySnackBar(
              context: context,
              message: f.message,
              isError: true,
            ),
          ),
        ),
        BlocListener<BackupSettingsBloc, BackupSettingsState>(
          listenWhen: (p, c) => p.lockFailure != c.lockFailure,
          listener: (context, state) => state.lockFailure.fold(
            () {},
            (f) {
              setState(() => _pin = '');
              showMySnackBar(
                context: context,
                message: f.message,
                isError: true,
              );
            },
          ),
        ),
        BlocListener<BackupSettingsBloc, BackupSettingsState>(
          listenWhen: (p, c) => p.notice != c.notice,
          listener: (context, state) =>
              state.notice.fold(() {}, (n) => _onNotice(context, n)),
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Google Drive backup'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new_rounded),
            onPressed: () =>
                _panel == _Panel.main ? context.router.pop() : _closePanel(),
          ),
        ),
        body: SafeArea(
          child: BlocBuilder<BackupSettingsBloc, BackupSettingsState>(
            builder: (context, state) => _content(state),
          ),
        ),
      ),
    );
  }

  void _onNotice(BuildContext context, BackupSettingsNotice notice) {
    final sync = context.read<BackupSyncBloc>();
    switch (notice) {
      case BackupSettingsNotice.enabled:
        sync.add(const BackupSyncEvent.statusRefreshRequested());
        showMySnackBar(context: context, message: 'Backup is on');
      case BackupSettingsNotice.enabledUploadPending:
        sync.add(const BackupSyncEvent.statusRefreshRequested());
        showMySnackBar(
          context: context,
          message: 'Backup is on. The first upload will retry automatically',
        );
      case BackupSettingsNotice.confirmationMismatch:
        showMySnackBar(
          context: context,
          message: "Those words don't match. Check what you wrote down",
          isError: true,
        );
      case BackupSettingsNotice.testPassed:
        _open(_Panel.main);
        showMySnackBar(
          context: context,
          message: 'Your recovery key opens the latest backup',
        );
      case BackupSettingsNotice.disabled:
        sync.add(const BackupSyncEvent.statusRefreshRequested());
        showMySnackBar(context: context, message: 'Backup turned off');
    }
  }

  Widget _content(BackupSettingsState state) {
    final status = state.status;
    if (status == null) return const MyCircularProgress();
    if (!status.isConfigured) return const _NotConfigured();

    switch (state.setupStep) {
      case BackupSetupStep.showWords:
        return _WordsStep(
          words: state.pendingKey!.words,
          onContinue: () =>
              _bloc.add(const BackupSettingsEvent.wordsWrittenDown()),
          onCancel: () => _bloc.add(const BackupSettingsEvent.setupCancelled()),
        );
      case BackupSetupStep.confirmWords:
        return _ConfirmStep(
          positions: state.confirmPositions,
          busy: state.isBusy,
          onSubmit: (answers) =>
              _bloc.add(BackupSettingsEvent.confirmationSubmitted(answers)),
          onBack: () => _bloc.add(const BackupSettingsEvent.wordsRequested()),
        );
      case BackupSetupStep.none:
        break;
    }

    if (!status.isEnabled) {
      return _Intro(
        busy: state.isBusy,
        onSetup: () => _bloc.add(const BackupSettingsEvent.setupStarted()),
      );
    }

    switch (_panel) {
      case _Panel.revealKey:
        return _RevealKey(
          revealed: state.revealedKey,
          pin: _pin,
          busy: state.isBusy,
          onPin: _onPin,
          onHide: _closePanel,
        );
      case _Panel.testKey:
        return _TestKey(
          busy: state.isBusy,
          canTest: RecoveryKey.fromWords(_words).isRight(),
          onChanged: (words) => setState(() => _words = words),
          onTest: () => _bloc.add(BackupSettingsEvent.testRequested(_words)),
          onCancel: _closePanel,
        );
      case _Panel.main:
        return _Status(
          accountEmail: status.accountEmail ?? '',
          busy: state.isBusy,
          onShowKey: () => _open(_Panel.revealKey),
          onTestKey: () => _open(_Panel.testKey),
          onTurnOff: _turnOff,
        );
    }
  }
}

class _Page extends StatelessWidget {
  const _Page({required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.fromLTRB(20, 8, 20, 24),
      children: children,
    );
  }
}

class _Paragraph extends StatelessWidget {
  const _Paragraph(this.text, {this.icon});

  final String text;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (icon != null) ...[
            Icon(icon, size: 22),
            const SizedBox(width: 10),
          ],
          Expanded(child: Text(text, style: MyTextStyles.bodyLarge)),
        ],
      ),
    );
  }
}

class _NotConfigured extends StatelessWidget {
  const _NotConfigured();

  @override
  Widget build(BuildContext context) {
    return const _Page(
      children: [
        MyCustomContainer(
          padding: EdgeInsets.all(16),
          child: _Paragraph(
            'This build of Passvera is not connected to Google Drive yet, so '
            'backups are not available.',
            icon: Icons.cloud_off_outlined,
          ),
        ),
      ],
    );
  }
}

class _Intro extends StatelessWidget {
  const _Intro({required this.busy, required this.onSetup});

  final bool busy;
  final VoidCallback onSetup;

  @override
  Widget build(BuildContext context) {
    return _Page(
      children: [
        const Text('Back up to Google Drive',
            style: MyTextStyles.headline2Bold),
        const SizedBox(height: 16),
        const _Paragraph(
          'Your vault is encrypted on this phone before it is uploaded. '
          'Google only ever stores an unreadable file.',
          icon: Icons.lock_outline_rounded,
        ),
        const _Paragraph(
          'Only your 12-word recovery key can open it. Passvera cannot see '
          'it and cannot recover it for you.',
          icon: Icons.key_outlined,
        ),
        const _Paragraph(
          'Every change is backed up automatically; the last 10 versions '
          'are kept.',
          icon: Icons.sync_rounded,
        ),
        const SizedBox(height: 12),
        MyFormButton(
          title: busy ? 'Connecting…' : 'Set up backup',
          onPressed: busy ? null : onSetup,
        ),
        const SizedBox(height: 12),
        MyFormButton(
          title: 'Restore from a backup',
          onPressed: () => context.router.push(const RestoreRoute()),
        ),
      ],
    );
  }
}

class _WordsStep extends StatelessWidget {
  const _WordsStep({
    required this.words,
    required this.onContinue,
    required this.onCancel,
  });

  final List<String> words;
  final VoidCallback onContinue;
  final VoidCallback onCancel;

  @override
  Widget build(BuildContext context) {
    return _Page(
      children: [
        const Text('Your recovery key', style: MyTextStyles.headline2Bold),
        const SizedBox(height: 12),
        const _Paragraph(
          'Write these 12 words on paper, in order, and keep them somewhere '
          'safe. Do not store them with your Google password.',
          icon: Icons.edit_note_rounded,
        ),
        RecoveryWordsGrid(words: words),
        const SizedBox(height: 16),
        const _Paragraph(
          'Anyone with these words and your Google account can open your '
          'backup. Without them, nobody can, including you.',
          icon: Icons.warning_amber_rounded,
        ),
        const SizedBox(height: 8),
        MyFormButton(title: "I've written them down", onPressed: onContinue),
        const SizedBox(height: 12),
        MyFormButton(title: 'Cancel', onPressed: onCancel),
      ],
    );
  }
}

class _ConfirmStep extends StatefulWidget {
  const _ConfirmStep({
    required this.positions,
    required this.busy,
    required this.onSubmit,
    required this.onBack,
  });

  final List<int> positions;
  final bool busy;
  final ValueChanged<List<String>> onSubmit;
  final VoidCallback onBack;

  @override
  State<_ConfirmStep> createState() => _ConfirmStepState();
}

class _ConfirmStepState extends State<_ConfirmStep> {
  List<String> _answers = const [];

  bool get _complete =>
      _answers.length == widget.positions.length &&
      _answers.every(RecoveryKey.isWord);

  @override
  Widget build(BuildContext context) {
    final numbers = [for (final p in widget.positions) p + 1];
    return _Page(
      children: [
        const Text('Check your paper', style: MyTextStyles.headline2Bold),
        const SizedBox(height: 12),
        _Paragraph(
          'Enter words ${numbers.join(', ')} from what you wrote down.',
        ),
        RecoveryWordFields(
          numbers: numbers,
          onChanged: (answers) => setState(() => _answers = answers),
        ),
        const SizedBox(height: 8),
        MyFormButton(
          title: widget.busy ? 'Turning on…' : 'Turn on backup',
          onPressed: _complete && !widget.busy
              ? () => widget.onSubmit(_answers)
              : null,
        ),
        const SizedBox(height: 12),
        MyFormButton(title: 'Show the words again', onPressed: widget.onBack),
      ],
    );
  }
}

class _Status extends StatelessWidget {
  const _Status({
    required this.accountEmail,
    required this.busy,
    required this.onShowKey,
    required this.onTestKey,
    required this.onTurnOff,
  });

  final String accountEmail;
  final bool busy;
  final VoidCallback onShowKey;
  final VoidCallback onTestKey;
  final VoidCallback onTurnOff;

  @override
  Widget build(BuildContext context) {
    return _Page(
      children: [
        MyCustomContainer(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Backup is on', style: MyTextStyles.headline3Bold),
              const SizedBox(height: 4),
              Text(accountEmail, style: MyTextStyles.bodyLarge),
              const SizedBox(height: 8),
              const BackupSyncStatusText(style: MyTextStyles.bodySmallBold),
            ],
          ),
        ),
        const SizedBox(height: 20),
        BlocBuilder<BackupSyncBloc, BackupSyncState>(
          builder: (context, sync) => MyFormButton(
            title: sync.isUploading ? 'Backing up…' : 'Back up now',
            onPressed: sync.isUploading
                ? null
                : () => context
                    .read<BackupSyncBloc>()
                    .add(const BackupSyncEvent.syncRequested()),
          ),
        ),
        const SizedBox(height: 12),
        MyFormButton(title: 'Show recovery key', onPressed: onShowKey),
        const SizedBox(height: 12),
        MyFormButton(title: 'Test recovery key', onPressed: onTestKey),
        const SizedBox(height: 12),
        MyFormButton(
          title: 'Restore from a backup',
          onPressed: () => context.router.push(const RestoreRoute()),
        ),
        const SizedBox(height: 24),
        MyFormButton(
          title: 'Turn off backup',
          isDestructive: true,
          onPressed: busy ? null : onTurnOff,
        ),
      ],
    );
  }
}

/// One line about the automatic backup, from the app-wide sync state.
class BackupSyncStatusText extends StatelessWidget {
  const BackupSyncStatusText({super.key, required this.style});

  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BackupSyncBloc, BackupSyncState>(
      builder: (context, sync) {
        final status = sync.status;
        final String text;
        if (status == null || !status.isEnabled) {
          text = 'Off';
        } else if (sync.isUploading) {
          text = 'Backing up…';
        } else if (sync.lastFailure.isSome() && status.hasPendingChanges) {
          text = sync.lastFailure.fold(() => '', (f) => f.message);
        } else if (status.hasPendingChanges) {
          text = 'Changes waiting to be backed up';
        } else if (status.lastSuccessAt != null) {
          text = 'Last backup ${relativeTime(status.lastSuccessAt!)}';
        } else {
          text = 'Not backed up yet';
        }
        return Text(text, style: style);
      },
    );
  }
}

class _RevealKey extends StatelessWidget {
  const _RevealKey({
    required this.revealed,
    required this.pin,
    required this.busy,
    required this.onPin,
    required this.onHide,
  });

  final RecoveryKey? revealed;
  final String pin;
  final bool busy;
  final ValueChanged<String> onPin;
  final VoidCallback onHide;

  @override
  Widget build(BuildContext context) {
    final key = revealed;
    if (key == null) {
      return Padding(
        padding: const EdgeInsets.all(24),
        child: PinPad(
          pin: pin,
          title: 'Enter PIN to show the key',
          enabled: !busy,
          onChanged: onPin,
        ),
      );
    }
    return _Page(
      children: [
        const Text('Your recovery key', style: MyTextStyles.headline2Bold),
        const SizedBox(height: 12),
        RecoveryWordsGrid(words: key.words),
        const SizedBox(height: 16),
        MyFormButton(title: 'Hide', onPressed: onHide),
      ],
    );
  }
}

class _TestKey extends StatelessWidget {
  const _TestKey({
    required this.busy,
    required this.canTest,
    required this.onChanged,
    required this.onTest,
    required this.onCancel,
  });

  final bool busy;
  final bool canTest;
  final ValueChanged<List<String>> onChanged;
  final VoidCallback onTest;
  final VoidCallback onCancel;

  @override
  Widget build(BuildContext context) {
    return _Page(
      children: [
        const Text('Test your recovery key', style: MyTextStyles.headline2Bold),
        const SizedBox(height: 12),
        const _Paragraph(
          'Type the 12 words from your paper. Passvera opens the latest '
          'backup with them, without changing anything.',
        ),
        RecoveryWordFields(
          numbers: [for (var i = 1; i <= RecoveryKey.wordCount; i++) i],
          onChanged: onChanged,
        ),
        const SizedBox(height: 8),
        MyFormButton(
          title: busy ? 'Checking…' : 'Test',
          onPressed: canTest && !busy ? onTest : null,
        ),
        const SizedBox(height: 12),
        MyFormButton(title: 'Cancel', onPressed: onCancel),
      ],
    );
  }
}
