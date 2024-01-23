import 'package:freezed_annotation/freezed_annotation.dart';
part 'application_model.freezed.dart';

@freezed
abstract class ApplicationModel with _$ApplicationModel {
  const factory ApplicationModel({
    required String key,
    required String value,
  }) = _ApplicationModel;
}



