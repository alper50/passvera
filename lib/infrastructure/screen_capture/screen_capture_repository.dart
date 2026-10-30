import 'package:injectable/injectable.dart';
import 'package:passvera/domain/i_screen_capture_repository.dart';
import 'package:passvera/infrastructure/screen_capture/screen_capture_service.dart';

@LazySingleton(as: IScreenCaptureRepository)
class ScreenCaptureRepository implements IScreenCaptureRepository {
  ScreenCaptureRepository(this._service);

  final ScreenCaptureService _service;

  @override
  Future<bool> allowWithWarning() => _service.allow();

  @override
  Future<void> block() => _service.block();

  @override
  Stream<void> get captures => _service.captures;
}
