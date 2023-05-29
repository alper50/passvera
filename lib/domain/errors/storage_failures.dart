import 'package:freezed_annotation/freezed_annotation.dart';
part 'storage_failures.freezed.dart';
@freezed 
abstract class StorageFailure with _$StorageFailure{
  const factory StorageFailure.unexpected(dynamic e)= _Unexpected;
  const factory StorageFailure.insufficientPermission()= _InsufficientPermission;
}