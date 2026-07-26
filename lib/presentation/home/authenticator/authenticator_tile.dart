import 'dart:async';

import 'package:flutter/material.dart';
import 'package:passvera/domain/authenticator_entry.dart';
import 'package:passvera/domain/totp_generator.dart';
import 'package:passvera/presentation/core/theme/colors.dart';
import 'package:passvera/presentation/core/theme/text_styles.dart';
import 'package:passvera/presentation/core/utils/secure_clipboard.dart';
import 'package:passvera/presentation/core/widgets/confirm_dialog.dart';
import 'package:passvera/presentation/core/widgets/my_small_button.dart';
import 'package:passvera/presentation/core/widgets/my_snackbar.dart';

class AuthenticatorTile extends StatefulWidget {
  const AuthenticatorTile({
    super.key,
    required this.entry,
    required this.onDelete,
  });

  final AuthenticatorEntry entry;
  final VoidCallback onDelete;

  @override
  State<AuthenticatorTile> createState() => _AuthenticatorTileState();
}

class _AuthenticatorTileState extends State<AuthenticatorTile> {
  Timer? _timer;
  late String _code;
  late double _progress;

  @override
  void initState() {
    super.initState();
    _tick();
    _timer = Timer.periodic(const Duration(seconds: 1), (_) => _tick());
  }

  @override
  void didUpdateWidget(covariant AuthenticatorTile oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.entry != widget.entry) {
      _tick();
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _tick() {
    setState(() {
      _code = TotpGenerator.generate(widget.entry);
      _progress = TotpGenerator.progress(period: widget.entry.period);
    });
  }

  String get _formattedCode {
    if (_code.length == 6) {
      return '${_code.substring(0, 3)} ${_code.substring(3)}';
    }
    return _code;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      padding: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: MyColors.brand,
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(
          color: MyColors.ink,
          width: 3.0,
        ),
        boxShadow: const [
          BoxShadow(
            color: MyColors.inkSoft,
            offset: Offset(-5.0, 7.0),
            blurRadius: 5.0,
            blurStyle: BlurStyle.solid,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.entry.displayTitle,
                      style: MyTextStyles.headline2Bold,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    if (widget.entry.displaySubtitle.isNotEmpty) ...[
                      const SizedBox(height: 2),
                      Text(
                        widget.entry.displaySubtitle,
                        style: MyTextStyles.bodySmallBold,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ],
                ),
              ),
              IconButton(
                tooltip: 'Delete',
                onPressed: () async {
                  final confirmed = await showConfirmDialog(
                    context: context,
                    title: 'Delete code?',
                    message:
                        'Remove ${widget.entry.displayTitle} from authenticator?',
                  );
                  if (confirmed) {
                    widget.onDelete();
                  }
                },
                icon: const Icon(Icons.delete_outline_rounded),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Expanded(
                child: Text(
                  _formattedCode,
                  style: MyTextStyles.headline1Bold.copyWith(
                    letterSpacing: 2,
                    fontFeatures: const [FontFeature.tabularFigures()],
                  ),
                ),
              ),
              SizedBox(
                width: 36,
                height: 36,
                child: CircularProgressIndicator(
                  value: _progress,
                  strokeWidth: 4,
                  color: MyColors.ink,
                  backgroundColor: MyColors.inkSoft.withValues(alpha: 0.2),
                ),
              ),
              const SizedBox(width: 12),
              MySmallButton(
                icon: const Icon(Icons.copy_rounded, size: 35),
                onTap: () async {
                  await SecureClipboard.copy(_code);
                  if (!context.mounted) return;
                  showMySnackBar(
                    isError: false,
                    context: context,
                    message: 'Code copied (clears in 30s)',
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
