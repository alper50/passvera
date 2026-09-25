import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:passvera/application/backupSyncBloc/backup_sync_bloc.dart';
import 'package:passvera/application/restoreBloc/restore_bloc.dart';
import 'package:passvera/domain/backup/backup_payload.dart';
import 'package:passvera/domain/backup/recovery_key.dart';
import 'package:passvera/domain/backup/remote_backup.dart';
import 'package:passvera/domain/backup/restore_mode.dart';
import 'package:passvera/injection.dart';
import 'package:passvera/presentation/backup/widgets/recovery_word_fields.dart';
import 'package:passvera/presentation/core/route/route.dart';
import 'package:passvera/presentation/core/theme/colors.dart';
import 'package:passvera/presentation/core/theme/text_styles.dart';
import 'package:passvera/presentation/core/utils/failure_messages.dart';
import 'package:passvera/presentation/core/utils/relative_time.dart';
import 'package:passvera/presentation/core/widgets/form_dialog.dart';
import 'package:passvera/presentation/core/widgets/my_custom_container.dart';
import 'package:passvera/presentation/core/widgets/my_snackbar.dart';
import 'package:passvera/presentation/core/widgets/my_tag_chip.dart';

/// Restore the vault from a Drive backup (from onboarding or the backup
/// screen).
@RoutePage()
class RestoreView extends StatelessWidget {
  const RestoreView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<RestoreBloc>()..add(const RestoreEvent.started()),
      child: const _RestoreBody(),
    );
  }
}

class _RestoreBody extends StatelessWidget {
  const _RestoreBody();

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<RestoreBloc>();
    return BlocConsumer<RestoreBloc, RestoreState>(
      listenWhen: (p, c) => p.failure != c.failure || p.step != c.step,
      listener: (context, state) {
        state.failure.fold(
          () {},
          (f) => showMySnackBar(
            context: context,
            message: f.message,
            isError: true,
          ),
        );
        if (state.step == RestoreStep.done && state.keepBackingUp) {
          context
              .read<BackupSyncBloc>()
              .add(const BackupSyncEvent.statusRefreshRequested());
        }
      },
      builder: (context, state) {
        final canGoBack = state.step == RestoreStep.enterKey ||
            state.step == RestoreStep.preview;
        return Scaffold(
          appBar: AppBar(
            title: const Text('Restore from Drive'),
            automaticallyImplyLeading: false,
            leading: state.step == RestoreStep.done
                ? null
                : IconButton(
                    icon: const Icon(Icons.arrow_back_ios_new_rounded),
                    onPressed: () => canGoBack
                        ? bloc.add(const RestoreEvent.backPressed())
                        : context.router.pop(),
                  ),
          ),
          body: SafeArea(child: _step(context, state)),
        );
      },
    );
  }

  Widget _step(BuildContext context, RestoreState state) {
    final bloc = context.read<RestoreBloc>();
    switch (state.step) {
      case RestoreStep.connect:
        return _Page(
          children: [
            const Text(
              'Restore your vault',
              style: MyTextStyles.headline2Bold,
            ),
            const SizedBox(height: 12),
            const Text(
              'Sign in with the Google account you backed up to. You will '
              'need the 12-word recovery key you wrote down.',
              style: MyTextStyles.bodyLarge,
            ),
            const SizedBox(height: 24),
            MyFormButton(
              title: state.isBusy ? 'Connecting…' : 'Connect Google account',
              onPressed: state.isBusy
                  ? null
                  : () => bloc.add(const RestoreEvent.connectRequested()),
            ),
          ],
        );
      case RestoreStep.chooseBackup:
        return _Page(
          children: [
            const Text('Choose a backup', style: MyTextStyles.headline2Bold),
            const SizedBox(height: 4),
            Text(state.account ?? '', style: MyTextStyles.bodyLarge),
            const SizedBox(height: 16),
            for (final backup in state.backups)
              _BackupTile(
                backup: backup,
                isLatest: backup == state.backups.first,
                selected: backup == state.selected,
                onTap: () => bloc.add(RestoreEvent.backupSelected(backup)),
              ),
            const SizedBox(height: 12),
            MyFormButton(
              title: 'Continue',
              onPressed: () => bloc.add(const RestoreEvent.backupConfirmed()),
            ),
          ],
        );
      case RestoreStep.enterKey:
        return _KeyStep(
          busy: state.isBusy,
          onSubmit: (words) => bloc.add(RestoreEvent.keySubmitted(words)),
        );
      case RestoreStep.preview:
        return _Preview(state: state);
      case RestoreStep.done:
        return _Page(
          children: [
            const Icon(Icons.check_circle_outline_rounded, size: 64),
            const SizedBox(height: 12),
            Text(
              state.restoredCount == 1
                  ? '1 entry restored'
                  : '${state.restoredCount} entries restored',
              style: MyTextStyles.headline2Bold,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            Text(
              state.keepBackingUp
                  ? 'Backup stays on for ${state.account}.'
                  : 'Backup is off. You can turn it on in Profile.',
              style: MyTextStyles.bodyLarge,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            MyFormButton(
              title: 'Open Passvera',
              onPressed: () => context.router.replaceAll([const HomeRoute()]),
            ),
          ],
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

class _BackupTile extends StatelessWidget {
  const _BackupTile({
    required this.backup,
    required this.isLatest,
    required this.selected,
    required this.onTap,
  });

  final RemoteBackup backup;
  final bool isLatest;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Material(
        color: selected ? MyColors.brand : MyColors.surfaceWhite,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(color: MyColors.ink, width: 2.5),
        ),
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
            child: Row(
              children: [
                Icon(
                  selected
                      ? Icons.radio_button_checked_rounded
                      : Icons.radio_button_unchecked_rounded,
                  size: 22,
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        shortDateTime(backup.createdAt),
                        style: MyTextStyles.bodyLargeBold,
                      ),
                      Text(
                        isLatest
                            ? 'Latest · ${relativeTime(backup.createdAt)}'
                            : relativeTime(backup.createdAt),
                        style: MyTextStyles.bodySmall,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _KeyStep extends StatefulWidget {
  const _KeyStep({required this.busy, required this.onSubmit});

  final bool busy;
  final ValueChanged<List<String>> onSubmit;

  @override
  State<_KeyStep> createState() => _KeyStepState();
}

class _KeyStepState extends State<_KeyStep> {
  List<String> _words = const [];

  @override
  Widget build(BuildContext context) {
    final valid = RecoveryKey.fromWords(_words).isRight();
    return _Page(
      children: [
        const Text('Enter your recovery key',
            style: MyTextStyles.headline2Bold),
        const SizedBox(height: 12),
        const Text(
          'Type the 12 words in order. You can also paste all of them into '
          'the first field.',
          style: MyTextStyles.bodyLarge,
        ),
        const SizedBox(height: 16),
        RecoveryWordFields(
          numbers: [for (var i = 1; i <= RecoveryKey.wordCount; i++) i],
          onChanged: (words) => setState(() => _words = words),
        ),
        const SizedBox(height: 8),
        MyFormButton(
          title: widget.busy ? 'Opening…' : 'Open backup',
          onPressed:
              valid && !widget.busy ? () => widget.onSubmit(_words) : null,
        ),
      ],
    );
  }
}

class _Preview extends StatelessWidget {
  const _Preview({required this.state});

  final RestoreState state;

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<RestoreBloc>();
    final payload = state.payload!;
    final replace = state.vaultHasEntries && state.mode == RestoreMode.replace;
    return _Page(
      children: [
        const Text('Backup contents', style: MyTextStyles.headline2Bold),
        const SizedBox(height: 4),
        Text(
          'Made ${shortDateTime(payload.createdAt)}',
          style: MyTextStyles.bodyLarge,
        ),
        const SizedBox(height: 16),
        _Contents(payload: payload),
        if (state.vaultHasEntries) ...[
          const SizedBox(height: 20),
          const Text('This phone already has entries',
              style: MyTextStyles.bodyLargeBold),
          const SizedBox(height: 8),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              MyTagChip(
                label: 'Add missing ones',
                selected: state.mode == RestoreMode.merge,
                onTap: () =>
                    bloc.add(const RestoreEvent.modeChanged(RestoreMode.merge)),
              ),
              MyTagChip(
                label: 'Replace everything',
                selected: state.mode == RestoreMode.replace,
                onTap: () => bloc
                    .add(const RestoreEvent.modeChanged(RestoreMode.replace)),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            replace
                ? 'Entries that are not in the backup will be deleted from '
                    'this phone.'
                : 'Entries already on this phone are kept as they are.',
            style: MyTextStyles.bodySmall,
          ),
        ],
        const SizedBox(height: 16),
        SwitchListTile(
          contentPadding: EdgeInsets.zero,
          value: state.keepBackingUp,
          onChanged: (keep) =>
              bloc.add(RestoreEvent.keepBackingUpChanged(keep)),
          title: const Text(
            'Keep backing up to this account',
            style: MyTextStyles.bodyLargeBold,
          ),
          subtitle: Text(state.account ?? '', style: MyTextStyles.bodySmall),
        ),
        const SizedBox(height: 16),
        MyFormButton(
          title: state.isBusy ? 'Restoring…' : 'Restore',
          isDestructive: replace,
          onPressed: state.isBusy
              ? null
              : () => bloc.add(const RestoreEvent.restoreConfirmed()),
        ),
      ],
    );
  }
}

class _Contents extends StatelessWidget {
  const _Contents({required this.payload});

  final BackupPayload payload;

  @override
  Widget build(BuildContext context) {
    final names = [
      for (final p in payload.passwords) p.key,
      for (final a in payload.authenticators) '${a.displayTitle} (code)',
    ];
    return MyCustomContainer(
      padding: const EdgeInsets.all(14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${payload.passwords.length} passwords · '
            '${payload.authenticators.length} authenticator codes',
            style: MyTextStyles.bodyLargeBold,
          ),
          if (names.isNotEmpty) ...[
            const SizedBox(height: 8),
            Text(
              names.take(8).join(', ') +
                  (names.length > 8 ? ' and ${names.length - 8} more' : ''),
              style: MyTextStyles.bodySmall,
            ),
          ],
        ],
      ),
    );
  }
}
