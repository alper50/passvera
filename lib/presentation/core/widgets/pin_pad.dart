import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:passvera/domain/lock_constants.dart';
import 'package:passvera/presentation/core/theme/colors.dart';
import 'package:passvera/presentation/core/theme/text_styles.dart';

class PinPad extends StatelessWidget {
  const PinPad({
    super.key,
    required this.pin,
    required this.onChanged,
    this.title = 'Enter PIN',
    this.errorText,
    this.enabled = true,
  });

  final String pin;
  final ValueChanged<String> onChanged;
  final String title;
  final String? errorText;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(title, style: MyTextStyles.headline2Bold),
        const SizedBox(height: 24),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(kAppPinLength, (index) {
            return _PinDot(filled: index < pin.length);
          }),
        ),
        if (errorText != null) ...[
          const SizedBox(height: 16),
          Text(
            errorText!,
            style: MyTextStyles.bodyLargeBold.copyWith(color: MyColors.error),
            textAlign: TextAlign.center,
          ),
        ],
        const SizedBox(height: 32),
        _Keypad(
          enabled: enabled,
          onDigit: (digit) {
            if (!enabled || pin.length >= kAppPinLength) return;
            onChanged('$pin$digit');
          },
          onBackspace: () {
            if (!enabled || pin.isEmpty) return;
            onChanged(pin.substring(0, pin.length - 1));
          },
        ),
      ],
    );
  }
}

class _PinDot extends StatelessWidget {
  const _PinDot({required this.filled});

  final bool filled;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: AnimatedScale(
        scale: filled ? 1.15 : 1.0,
        duration: const Duration(milliseconds: 180),
        curve: Curves.easeOutBack,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 180),
          curve: Curves.easeOut,
          width: 18,
          height: 18,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: filled ? MyColors.ink : MyColors.transparent,
            border: Border.all(color: MyColors.ink, width: 2),
          ),
        ),
      ),
    );
  }
}

class _Keypad extends StatelessWidget {
  const _Keypad({
    required this.onDigit,
    required this.onBackspace,
    required this.enabled,
  });

  final ValueChanged<String> onDigit;
  final VoidCallback onBackspace;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    const keys = [
      ['1', '2', '3'],
      ['4', '5', '6'],
      ['7', '8', '9'],
      ['', '0', 'back'],
    ];

    return Column(
      children: keys.map((row) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 6),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: row.map((key) {
              if (key.isEmpty) {
                return const SizedBox(width: 72, height: 72);
              }
              if (key == 'back') {
                return _KeyButton(
                  enabled: enabled,
                  onTap: onBackspace,
                  child: const Icon(Icons.backspace_outlined, size: 28),
                );
              }
              return _KeyButton(
                enabled: enabled,
                onTap: () => onDigit(key),
                child: Text(key, style: MyTextStyles.headline2Bold),
              );
            }).toList(),
          ),
        );
      }).toList(),
    );
  }
}

class _KeyButton extends StatefulWidget {
  const _KeyButton({
    required this.onTap,
    required this.child,
    required this.enabled,
  });

  final VoidCallback onTap;
  final Widget child;
  final bool enabled;

  @override
  State<_KeyButton> createState() => _KeyButtonState();
}

class _KeyButtonState extends State<_KeyButton>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _scale;
  late final Animation<double> _shadowOffset;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 90),
      reverseDuration: const Duration(milliseconds: 160),
    );
    _scale = Tween<double>(begin: 1.0, end: 0.9).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeOut,
        reverseCurve: Curves.easeOutBack,
      ),
    );
    _shadowOffset = Tween<double>(begin: 3.0, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOut),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: GestureDetector(
        onTapDown: widget.enabled ? (_) => _controller.forward() : null,
        onTapCancel: widget.enabled ? () => _controller.reverse() : null,
        onTapUp: widget.enabled
            ? (_) async {
                HapticFeedback.selectionClick();
                widget.onTap();
                if (mounted) {
                  await _controller.reverse();
                }
              }
            : null,
        child: AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            final offset = _shadowOffset.value;
            return Transform.scale(
              scale: _scale.value,
              child: Opacity(
                opacity: widget.enabled ? 1 : 0.45,
                child: Container(
                  width: 72,
                  height: 72,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: MyColors.brand,
                    shape: BoxShape.circle,
                    border: Border.all(color: MyColors.ink, width: 3),
                    boxShadow: [
                      BoxShadow(
                        color: MyColors.inkSoft,
                        offset: Offset(-offset, offset),
                        blurRadius: 4,
                        blurStyle: BlurStyle.solid,
                      ),
                    ],
                  ),
                  child: child,
                ),
              ),
            );
          },
          child: widget.child,
        ),
      ),
    );
  }
}
