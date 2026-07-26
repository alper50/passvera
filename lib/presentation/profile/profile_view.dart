import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:passvera/application/lockBloc/lock_bloc.dart';
import 'package:passvera/domain/errors/lock_failures.dart';
import 'package:passvera/domain/lock_constants.dart';
import 'package:passvera/injection.dart';
import 'package:passvera/presentation/core/theme/text_styles.dart';
import 'package:passvera/presentation/core/widgets/my_custom_container.dart';
import 'package:passvera/presentation/core/widgets/my_small_button.dart';
import 'package:passvera/presentation/core/widgets/my_snackbar.dart';
import 'package:passvera/presentation/core/widgets/pin_pad.dart';

enum _PinFlow { none, set, changeCurrent, changeNew, remove }

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          getIt<LockBloc>()..add(const LockEvent.checkPinStatus()),
      child: const _ProfileViewBody(),
    );
  }
}

class _ProfileViewBody extends StatefulWidget {
  const _ProfileViewBody();

  @override
  State<_ProfileViewBody> createState() => _ProfileViewBodyState();
}

class _ProfileViewBodyState extends State<_ProfileViewBody> {
  _PinFlow _flow = _PinFlow.none;
  String _pin = '';
  String _confirmPin = '';
  String _currentPin = '';
  String? _error;
  bool _awaitingConfirm = false;

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

  void _resetFlow() {
    setState(() {
      _flow = _PinFlow.none;
      _pin = '';
      _confirmPin = '';
      _currentPin = '';
      _error = null;
      _awaitingConfirm = false;
    });
  }

  void _startFlow(_PinFlow flow) {
    setState(() {
      _flow = flow;
      _pin = '';
      _confirmPin = '';
      _currentPin = '';
      _error = null;
      _awaitingConfirm = false;
    });
  }

  void _onPinInput(String value) {
    setState(() {
      _error = null;
      if (_awaitingConfirm) {
        _confirmPin = value;
      } else {
        _pin = value;
      }
    });

    final active = _awaitingConfirm ? _confirmPin : _pin;
    if (active.length != kAppPinLength) return;

    final bloc = context.read<LockBloc>();
    switch (_flow) {
      case _PinFlow.set:
        if (!_awaitingConfirm) {
          setState(() {
            _awaitingConfirm = true;
            _pin = active;
            _confirmPin = '';
          });
        } else {
          bloc.add(LockEvent.setPin(pin: _pin, confirmPin: active));
        }
        break;
      case _PinFlow.changeCurrent:
        setState(() {
          _currentPin = active;
          _flow = _PinFlow.changeNew;
          _pin = '';
          _confirmPin = '';
          _awaitingConfirm = false;
        });
        break;
      case _PinFlow.changeNew:
        if (!_awaitingConfirm) {
          setState(() {
            _awaitingConfirm = true;
            _pin = active;
            _confirmPin = '';
          });
        } else {
          bloc.add(
            LockEvent.updatePin(
              currentPin: _currentPin,
              newPin: _pin,
              confirmNewPin: active,
            ),
          );
        }
        break;
      case _PinFlow.remove:
        bloc.add(LockEvent.removePin(currentPin: active));
        break;
      case _PinFlow.none:
        break;
    }
  }

  String _flowTitle() {
    switch (_flow) {
      case _PinFlow.set:
        return _awaitingConfirm ? 'Confirm new PIN' : 'Create PIN';
      case _PinFlow.changeCurrent:
        return 'Enter current PIN';
      case _PinFlow.changeNew:
        return _awaitingConfirm ? 'Confirm new PIN' : 'Enter new PIN';
      case _PinFlow.remove:
        return 'Enter PIN to remove';
      case _PinFlow.none:
        return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<LockBloc, AppLockState>(
          listenWhen: (p, c) => p.setFailureOrSuccess != c.setFailureOrSuccess,
          listener: (context, state) {
            state.setFailureOrSuccess.fold(
              () {},
              (either) => either.fold(
                (failure) => setState(() {
                  _error = _mapFailure(failure);
                  _pin = '';
                  _confirmPin = '';
                  _awaitingConfirm = false;
                }),
                (_) {
                  showMySnackBar(context: context, message: 'PIN set');
                  _resetFlow();
                  context
                      .read<LockBloc>()
                      .add(const LockEvent.checkPinStatus());
                },
              ),
            );
          },
        ),
        BlocListener<LockBloc, AppLockState>(
          listenWhen: (p, c) =>
              p.updateFailureOrSuccess != c.updateFailureOrSuccess,
          listener: (context, state) {
            state.updateFailureOrSuccess.fold(
              () {},
              (either) => either.fold(
                (failure) => setState(() {
                  _error = _mapFailure(failure);
                  _pin = '';
                  _confirmPin = '';
                  _awaitingConfirm = false;
                  _flow = _PinFlow.changeCurrent;
                  _currentPin = '';
                }),
                (_) {
                  showMySnackBar(context: context, message: 'PIN updated');
                  _resetFlow();
                  context
                      .read<LockBloc>()
                      .add(const LockEvent.checkPinStatus());
                },
              ),
            );
          },
        ),
        BlocListener<LockBloc, AppLockState>(
          listenWhen: (p, c) =>
              p.removeFailureOrSuccess != c.removeFailureOrSuccess,
          listener: (context, state) {
            state.removeFailureOrSuccess.fold(
              () {},
              (either) => either.fold(
                (failure) => setState(() {
                  _error = _mapFailure(failure);
                  _pin = '';
                }),
                (_) {
                  showMySnackBar(context: context, message: 'PIN removed');
                  _resetFlow();
                  context
                      .read<LockBloc>()
                      .add(const LockEvent.checkPinStatus());
                },
              ),
            );
          },
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Profile'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new_rounded),
            onPressed: () {
              if (_flow != _PinFlow.none) {
                _resetFlow();
              } else {
                AutoRouter.of(context).pop();
              }
            },
          ),
        ),
        body: BlocBuilder<LockBloc, AppLockState>(
          builder: (context, state) {
            if (_flow != _PinFlow.none) {
              return Padding(
                padding: const EdgeInsets.all(24),
                child: PinPad(
                  pin: _awaitingConfirm ? _confirmPin : _pin,
                  title: _flowTitle(),
                  errorText: _error,
                  enabled: !state.isLoading,
                  onChanged: _onPinInput,
                ),
              );
            }

            return Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  MyCustomContainer(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('App Lock', style: MyTextStyles.headline2Bold),
                        Text(
                          state.isPinEnabled ? 'On' : 'Off',
                          style: MyTextStyles.headline3,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  if (!state.isPinEnabled)
                    _ProfileAction(
                      label: 'Set PIN',
                      icon: Icons.lock_outline,
                      onTap: () => _startFlow(_PinFlow.set),
                    )
                  else ...[
                    _ProfileAction(
                      label: 'Change PIN',
                      icon: Icons.lock_reset_outlined,
                      onTap: () => _startFlow(_PinFlow.changeCurrent),
                    ),
                    const SizedBox(height: 16),
                    _ProfileAction(
                      label: 'Remove PIN',
                      icon: Icons.lock_open_outlined,
                      onTap: () => _startFlow(_PinFlow.remove),
                    ),
                  ],
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class _ProfileAction extends StatelessWidget {
  const _ProfileAction({
    required this.label,
    required this.icon,
    required this.onTap,
  });

  final String label;
  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return MyCustomContainer(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: MyTextStyles.headline3Bold),
          MySmallButton(
            icon: Icon(icon, size: 32),
            onTap: onTap,
          ),
        ],
      ),
    );
  }
}
