import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:passvera/application/authenticatorBloc/authenticator_bloc.dart';
import 'package:passvera/presentation/core/theme/colors.dart';
import 'package:passvera/presentation/core/utils/failure_messages.dart';
import 'package:passvera/presentation/core/widgets/my_circular_progress.dart';
import 'package:passvera/presentation/core/widgets/my_empty_widget.dart';
import 'package:passvera/presentation/core/widgets/my_snackbar.dart';
import 'package:passvera/presentation/home/authenticator/authenticator_tile.dart';

class AuthenticatorBody extends StatelessWidget {
  const AuthenticatorBody({super.key});

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
                  message: failure.message,
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
                  message: failure.message,
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
                    // Lets the last card scroll clear of the floating action button.
                    padding: const EdgeInsets.only(bottom: 96),
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
                        color: MyColors.surface,
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
