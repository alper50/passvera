import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:passvera/domain/errors/clipboard_failures.dart';
import 'package:passvera/domain/i_clipboard_repository.dart';
import 'package:passvera/infrastructure/clipboard/clipboard_service.dart';

@LazySingleton(as: IClipboardRepository)
class ClipboardRepository implements IClipboardRepository {
  ClipboardRepository(this._service);

  final ClipboardService _service;

  @override
  Future<Either<ClipboardFailure, Unit>> copySensitive({
    required String text,
    required Duration clearAfter,
  }) {
    return _service.copySensitive(text: text, clearAfter: clearAfter);
  }
}
