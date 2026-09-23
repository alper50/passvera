import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:passvera/application/clipboardBloc/clipboard_bloc.dart';
import 'package:passvera/domain/clipboard_constants.dart';
import 'package:passvera/presentation/core/utils/failure_messages.dart';
import 'package:passvera/presentation/core/widgets/my_snackbar.dart';

/// Shows the copy result of the nearest [ClipboardBloc] as a snackbar.
class ClipboardSnackBarListener
    extends BlocListener<ClipboardBloc, ClipboardState> {
  ClipboardSnackBarListener({super.key, super.child})
      : super(
          listener: (context, state) {
            state.copyFailureOrSuccess.fold(
              () {},
              (either) => showMySnackBar(
                isError: either.isLeft(),
                context: context,
                message: either.fold(
                  (failure) => failure.message,
                  (_) => 'Copied (clears in '
                      '${kSensitiveClipboardTtl.inSeconds}s)',
                ),
              ),
            );
          },
        );
}
