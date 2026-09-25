import 'package:freezed_annotation/freezed_annotation.dart';

part 'remote_backup.freezed.dart';

/// A backup file in the user's Drive app folder (metadata only).
@freezed
abstract class RemoteBackup with _$RemoteBackup {
  const factory RemoteBackup({
    required String id,
    required DateTime createdAt,
    required int sizeBytes,
  }) = _RemoteBackup;
}
