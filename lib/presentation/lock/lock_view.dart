import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:passvera/application/lockBloc/lock_bloc.dart';
import 'package:passvera/domain/errors/lock_failures.dart';
import 'package:passvera/domain/lock_constants.dart';
import 'package:passvera/injection.dart';
import 'package:passvera/presentation/core/route/route.gr.dart';
import 'package:passvera/presentation/core/theme/colors.dart';
import 'package:passvera/presentation/core/widgets/pin_pad.dart';

class LockView extends StatelessWidget {
  const LockView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          getIt<LockBloc>()..add(const LockEvent.checkPinStatus()),
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

  String _mapFailure(LockFailure failure) {
    return failure.map(
      unexpected: (e) => e.toString(),
      wrongPin: () => 'Wrong PIN',
      invalidPin: () => 'PIN must be $kAppPinLength digits',
      pinAlreadySet: () => 'PIN already set',
      pinNotSet: () => 'PIN is not set',
      pinMismatch: () => 'PINs do not match',
      lockedOut: (seconds) => 'Too many attempts. Try again in ${seconds}s',
    );
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
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
                    _error = _mapFailure(failure);
                  });
                  if (state.isLockedOut) {
                    _startLockoutTicker();
                  }
                },
                (_) {
                  _stopLockoutTicker();
                  AutoRouter.of(context).pushAndPopUntil(
                    const HomeView(),
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
              return Padding(
                padding: const EdgeInsets.all(24),
                child: PinPad(
                  pin: _pin,
                  title: 'Unlock Passvera',
                  errorText: _error,
                  enabled: !state.isLoading && !state.isLockedOut,
                  onChanged: _onPinChanged,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
