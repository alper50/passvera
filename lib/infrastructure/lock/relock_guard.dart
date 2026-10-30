import 'package:injectable/injectable.dart';
import 'package:passvera/domain/i_relock_guard.dart';

@LazySingleton(as: IRelockGuard)
class RelockGuard implements IRelockGuard {
  int _active = 0;

  @override
  bool get isSuspended => _active > 0;

  @override
  Future<T> suspendWhile<T>(Future<T> Function() flow) async {
    _active++;
    try {
      return await flow();
    } finally {
      _active--;
    }
  }
}
