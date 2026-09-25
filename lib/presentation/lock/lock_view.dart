import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:passvera/application/lockBloc/lock_bloc.dart';
import 'package:passvera/domain/lock_constants.dart';
import 'package:passvera/injection.dart';
import 'package:passvera/presentation/core/route/route.dart';
import 'package:passvera/presentation/core/theme/colors.dart';
import 'package:passvera/presentation/core/utils/failure_messages.dart';
import 'package:passvera/presentation/core/widgets/my_small_button.dart';
import 'package:passvera/presentation/core/widgets/pin_pad.dart';

@RoutePage()
class LockView extends StatelessWidget {
  const LockView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<LockBloc>()..add(const LockEvent.checkPinStatus()),
      child: const _LockViewBody(),
    );
  }
}

class _LockViewBody extends StatefulWidget {
  const _LockViewBody();

  @override
  State<_LockViewBody> createState() => _LockViewBodyState();
}

class _LockViewBodyState extends State<_LockViewBody> {
  String _pin = '';
  String? _error;
  Timer? _lockoutTimer;

  @override
  void dispose() {
    _lockoutTimer?.cancel();
    super.dispose();
  }

  void _startLockoutTicker() {
    _lockoutTimer?.cancel();
    _lockoutTimer = Timer.periodic(const Duration(seconds: 1), (_) {
      if (!mounted) return;
      context.read<LockBloc>().add(const LockEvent.refreshLockout());
    });
  }

  void _stopLockoutTicker() {
    _lockoutTimer?.cancel();
    _lockoutTimer = null;
  }

  void _onPinChanged(String value) {
    setState(() {
      _pin = value;
      _error = null;
    });
    if (value.length == kAppPinLength) {
      context.read<LockBloc>().add(LockEvent.verifyPin(pin: value));
    }
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<LockBloc, AppLockState>(
          listenWhen: (previous, current) =>
              previous.statusFailureOrSuccess != current.statusFailureOrSuccess,
          listener: (context, state) {
            state.statusFailureOrSuccess.fold(
              () {},
              (either) => either.fold(
                (_) {},
                (isPinSet) {
                  // Nothing to unlock: storage was readable and has no PIN.
                  if (!isPinSet) {
                    AutoRouter.of(context).replace(const HomeRoute());
                  }
                },
              ),
            );
          },
        ),
        BlocListener<LockBloc, AppLockState>(
          listenWhen: (previous, current) =>
              previous.verifyFailureOrSuccess != current.verifyFailureOrSuccess,
          listener: (context, state) {
            state.verifyFailureOrSuccess.fold(
              () {},
              (either) => either.fold(
                (failure) {
                  setState(() {
                    _pin = '';
                    _error = failure.message;
                  });
                  if (state.isLockedOut) {
                    _startLockoutTicker();
                  }
                },
                (_) {
                  _stopLockoutTicker();
                  AutoRouter.of(context).pushAndPopUntil(
                    const HomeRoute(),
                    predicate: (_) => false,
                  );
                },
              ),
            );
          },
        ),
        BlocListener<LockBloc, AppLockState>(
          listenWhen: (previous, current) =>
              previous.lockoutRemainingSeconds !=
              current.lockoutRemainingSeconds,
          listener: (context, state) {
            if (state.isLockedOut) {
              setState(() {
                _error =
                    'Too many attempts. Try again in ${state.lockoutRemainingSeconds}s';
              });
              _startLockoutTicker();
            } else {
              _stopLockoutTicker();
              if (_error != null && _error!.startsWith('Too many attempts')) {
                setState(() => _error = null);
              }
            }
          },
        ),
      ],
      child: Scaffold(
        backgroundColor: MyColors.surface,
        body: SafeArea(
          child: BlocBuilder<LockBloc, AppLockState>(
            builder: (context, state) {
              // Fail closed: while the PIN state is unknown, stay locked.
              final statusFailed = state.statusFailureOrSuccess.fold(
                () => false,
                (either) => either.isLeft(),
              );
              return Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    PinPad(
                      pin: _pin,
                      title: 'Unlock Passvera',
                      errorText:
                          statusFailed ? 'Could not read lock status' : _error,
                      enabled: !state.isLoading &&
                          !state.isLockedOut &&
                          !statusFailed,
                      onChanged: _onPinChanged,
                    ),
                    if (statusFailed) ...[
                      const SizedBox(height: 24),
                      SizedBox(
                        width: 160,
                        height: 48,
                        child: MySmallButton(
                          icon: const Icon(Icons.refresh_rounded),
                          buttonText: 'Retry',
                          onTap: () => context
                              .read<LockBloc>()
                              .add(const LockEvent.checkPinStatus()),
                        ),
                      ),
                    ],
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
