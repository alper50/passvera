import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:passvera/application/authenticatorBloc/authenticator_bloc.dart';
import 'package:passvera/domain/errors/authenticator_failures.dart';
import 'package:passvera/presentation/core/theme/colors.dart';
import 'package:passvera/presentation/core/widgets/my_circular_progress.dart';
import 'package:passvera/presentation/core/widgets/my_empty_widget.dart';
import 'package:passvera/presentation/core/widgets/my_snackbar.dart';
import 'package:passvera/presentation/home/authenticator/authenticator_tile.dart';

class AuthenticatorBody extends StatelessWidget {
  const AuthenticatorBody({super.key});

  String _failureMessage(AuthenticatorFailure failure) {
    return failure.map(
      unexpected: (e) => e.toString(),
      invalidQr: () => 'Invalid QR code',
      unsupportedType: () => 'Only TOTP codes are supported',
      keyAlreadyUsed: () => 'This account is already added',
      emptySecret: () => 'QR has no secret',
      permissionDenied: () => 'Camera permission denied',
    );
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<AuthenticatorBloc, AuthenticatorState>(
          listenWhen: (previous, current) =>
              previous.deleteFailureOrSuccess != current.deleteFailureOrSuccess,
          listener: (context, state) {
            state.deleteFailureOrSuccess.fold(
              () {},
              (either) => either.fold(
                (failure) => showMySnackBar(
                  isError: true,
                  context: context,
                  message: _failureMessage(failure),
                ),
                (_) => showMySnackBar(
                  isError: false,
                  context: context,
                  message: 'Authenticator removed',
                ),
              ),
            );
          },
        ),
        BlocListener<AuthenticatorBloc, AuthenticatorState>(
          listenWhen: (previous, current) =>
              previous.loadFailureOrSuccess != current.loadFailureOrSuccess,
          listener: (context, state) {
            state.loadFailureOrSuccess.fold(
              () {},
              (either) => either.fold(
                (failure) => showMySnackBar(
                  isError: true,
                  context: context,
                  message: _failureMessage(failure),
                ),
                (_) {},
              ),
            );
          },
        ),
      ],
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: BlocBuilder<AuthenticatorBloc, AuthenticatorState>(
          builder: (context, state) {
            if (state.isLoading && state.entries.isEmpty) {
              return const MyCircularProgress();
            }
            if (state.entries.isEmpty) {
              return const MyEmptyWidget(
                message: 'Scan a QR code to add an authenticator',
              );
            }
            return Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: state.entries.length,
                    itemBuilder: (context, index) {
                      final entry = state.entries[index];
                      return AuthenticatorTile(
                        entry: entry,
                        onDelete: () {
                          context.read<AuthenticatorBloc>().add(
                                AuthenticatorEvent.delete(id: entry.id),
                              );
                        },
                      );
                    },
                  ),
                ),
                Container(
                  height: 24,
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: MyColors.surfaceWhite,
                        blurRadius: 15.0,
                        spreadRadius: 20,
                        blurStyle: BlurStyle.normal,
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
