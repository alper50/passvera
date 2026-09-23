import 'package:dartz/dartz.dart';
import 'package:passvera/domain/errors/clipboard_failures.dart';

abstract class IClipboardRepository {
  /// Copies [text] marked as sensitive and expires it after [clearAfter].
  Future<Either<ClipboardFailure, Unit>> copySensitive({
    required String text,
    required Duration clearAfter,
  });
}
