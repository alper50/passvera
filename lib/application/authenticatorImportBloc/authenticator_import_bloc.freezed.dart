// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authenticator_import_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthenticatorImportEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String raw) qrScanned,
    required TResult Function(String id) selectionToggled,
    required TResult Function() importConfirmed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String raw)? qrScanned,
    TResult? Function(String id)? selectionToggled,
    TResult? Function()? importConfirmed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String raw)? qrScanned,
    TResult Function(String id)? selectionToggled,
    TResult Function()? importConfirmed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_QrScanned value) qrScanned,
    required TResult Function(_SelectionToggled value) selectionToggled,
    required TResult Function(_ImportConfirmed value) importConfirmed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_QrScanned value)? qrScanned,
    TResult? Function(_SelectionToggled value)? selectionToggled,
    TResult? Function(_ImportConfirmed value)? importConfirmed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_QrScanned value)? qrScanned,
    TResult Function(_SelectionToggled value)? selectionToggled,
    TResult Function(_ImportConfirmed value)? importConfirmed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticatorImportEventCopyWith<$Res> {
  factory $AuthenticatorImportEventCopyWith(AuthenticatorImportEvent value,
          $Res Function(AuthenticatorImportEvent) then) =
      _$AuthenticatorImportEventCopyWithImpl<$Res, AuthenticatorImportEvent>;
}

/// @nodoc
class _$AuthenticatorImportEventCopyWithImpl<$Res,
        $Val extends AuthenticatorImportEvent>
    implements $AuthenticatorImportEventCopyWith<$Res> {
  _$AuthenticatorImportEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$AuthenticatorImportEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'AuthenticatorImportEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String raw) qrScanned,
    required TResult Function(String id) selectionToggled,
    required TResult Function() importConfirmed,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String raw)? qrScanned,
    TResult? Function(String id)? selectionToggled,
    TResult? Function()? importConfirmed,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String raw)? qrScanned,
    TResult Function(String id)? selectionToggled,
    TResult Function()? importConfirmed,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_QrScanned value) qrScanned,
    required TResult Function(_SelectionToggled value) selectionToggled,
    required TResult Function(_ImportConfirmed value) importConfirmed,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_QrScanned value)? qrScanned,
    TResult? Function(_SelectionToggled value)? selectionToggled,
    TResult? Function(_ImportConfirmed value)? importConfirmed,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_QrScanned value)? qrScanned,
    TResult Function(_SelectionToggled value)? selectionToggled,
    TResult Function(_ImportConfirmed value)? importConfirmed,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AuthenticatorImportEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_QrScannedCopyWith<$Res> {
  factory _$$_QrScannedCopyWith(
          _$_QrScanned value, $Res Function(_$_QrScanned) then) =
      __$$_QrScannedCopyWithImpl<$Res>;
  @useResult
  $Res call({String raw});
}

/// @nodoc
class __$$_QrScannedCopyWithImpl<$Res>
    extends _$AuthenticatorImportEventCopyWithImpl<$Res, _$_QrScanned>
    implements _$$_QrScannedCopyWith<$Res> {
  __$$_QrScannedCopyWithImpl(
      _$_QrScanned _value, $Res Function(_$_QrScanned) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? raw = null,
  }) {
    return _then(_$_QrScanned(
      null == raw
          ? _value.raw
          : raw // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_QrScanned implements _QrScanned {
  const _$_QrScanned(this.raw);

  @override
  final String raw;

  @override
  String toString() {
    return 'AuthenticatorImportEvent.qrScanned(raw: $raw)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QrScanned &&
            (identical(other.raw, raw) || other.raw == raw));
  }

  @override
  int get hashCode => Object.hash(runtimeType, raw);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QrScannedCopyWith<_$_QrScanned> get copyWith =>
      __$$_QrScannedCopyWithImpl<_$_QrScanned>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String raw) qrScanned,
    required TResult Function(String id) selectionToggled,
    required TResult Function() importConfirmed,
  }) {
    return qrScanned(raw);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String raw)? qrScanned,
    TResult? Function(String id)? selectionToggled,
    TResult? Function()? importConfirmed,
  }) {
    return qrScanned?.call(raw);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String raw)? qrScanned,
    TResult Function(String id)? selectionToggled,
    TResult Function()? importConfirmed,
    required TResult orElse(),
  }) {
    if (qrScanned != null) {
      return qrScanned(raw);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_QrScanned value) qrScanned,
    required TResult Function(_SelectionToggled value) selectionToggled,
    required TResult Function(_ImportConfirmed value) importConfirmed,
  }) {
    return qrScanned(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_QrScanned value)? qrScanned,
    TResult? Function(_SelectionToggled value)? selectionToggled,
    TResult? Function(_ImportConfirmed value)? importConfirmed,
  }) {
    return qrScanned?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_QrScanned value)? qrScanned,
    TResult Function(_SelectionToggled value)? selectionToggled,
    TResult Function(_ImportConfirmed value)? importConfirmed,
    required TResult orElse(),
  }) {
    if (qrScanned != null) {
      return qrScanned(this);
    }
    return orElse();
  }
}

abstract class _QrScanned implements AuthenticatorImportEvent {
  const factory _QrScanned(final String raw) = _$_QrScanned;

  String get raw;
  @JsonKey(ignore: true)
  _$$_QrScannedCopyWith<_$_QrScanned> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SelectionToggledCopyWith<$Res> {
  factory _$$_SelectionToggledCopyWith(
          _$_SelectionToggled value, $Res Function(_$_SelectionToggled) then) =
      __$$_SelectionToggledCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$_SelectionToggledCopyWithImpl<$Res>
    extends _$AuthenticatorImportEventCopyWithImpl<$Res, _$_SelectionToggled>
    implements _$$_SelectionToggledCopyWith<$Res> {
  __$$_SelectionToggledCopyWithImpl(
      _$_SelectionToggled _value, $Res Function(_$_SelectionToggled) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_SelectionToggled(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SelectionToggled implements _SelectionToggled {
  const _$_SelectionToggled(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'AuthenticatorImportEvent.selectionToggled(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectionToggled &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectionToggledCopyWith<_$_SelectionToggled> get copyWith =>
      __$$_SelectionToggledCopyWithImpl<_$_SelectionToggled>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String raw) qrScanned,
    required TResult Function(String id) selectionToggled,
    required TResult Function() importConfirmed,
  }) {
    return selectionToggled(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String raw)? qrScanned,
    TResult? Function(String id)? selectionToggled,
    TResult? Function()? importConfirmed,
  }) {
    return selectionToggled?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String raw)? qrScanned,
    TResult Function(String id)? selectionToggled,
    TResult Function()? importConfirmed,
    required TResult orElse(),
  }) {
    if (selectionToggled != null) {
      return selectionToggled(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_QrScanned value) qrScanned,
    required TResult Function(_SelectionToggled value) selectionToggled,
    required TResult Function(_ImportConfirmed value) importConfirmed,
  }) {
    return selectionToggled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_QrScanned value)? qrScanned,
    TResult? Function(_SelectionToggled value)? selectionToggled,
    TResult? Function(_ImportConfirmed value)? importConfirmed,
  }) {
    return selectionToggled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_QrScanned value)? qrScanned,
    TResult Function(_SelectionToggled value)? selectionToggled,
    TResult Function(_ImportConfirmed value)? importConfirmed,
    required TResult orElse(),
  }) {
    if (selectionToggled != null) {
      return selectionToggled(this);
    }
    return orElse();
  }
}

abstract class _SelectionToggled implements AuthenticatorImportEvent {
  const factory _SelectionToggled(final String id) = _$_SelectionToggled;

  String get id;
  @JsonKey(ignore: true)
  _$$_SelectionToggledCopyWith<_$_SelectionToggled> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ImportConfirmedCopyWith<$Res> {
  factory _$$_ImportConfirmedCopyWith(
          _$_ImportConfirmed value, $Res Function(_$_ImportConfirmed) then) =
      __$$_ImportConfirmedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ImportConfirmedCopyWithImpl<$Res>
    extends _$AuthenticatorImportEventCopyWithImpl<$Res, _$_ImportConfirmed>
    implements _$$_ImportConfirmedCopyWith<$Res> {
  __$$_ImportConfirmedCopyWithImpl(
      _$_ImportConfirmed _value, $Res Function(_$_ImportConfirmed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ImportConfirmed implements _ImportConfirmed {
  const _$_ImportConfirmed();

  @override
  String toString() {
    return 'AuthenticatorImportEvent.importConfirmed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ImportConfirmed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String raw) qrScanned,
    required TResult Function(String id) selectionToggled,
    required TResult Function() importConfirmed,
  }) {
    return importConfirmed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String raw)? qrScanned,
    TResult? Function(String id)? selectionToggled,
    TResult? Function()? importConfirmed,
  }) {
    return importConfirmed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String raw)? qrScanned,
    TResult Function(String id)? selectionToggled,
    TResult Function()? importConfirmed,
    required TResult orElse(),
  }) {
    if (importConfirmed != null) {
      return importConfirmed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_QrScanned value) qrScanned,
    required TResult Function(_SelectionToggled value) selectionToggled,
    required TResult Function(_ImportConfirmed value) importConfirmed,
  }) {
    return importConfirmed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_QrScanned value)? qrScanned,
    TResult? Function(_SelectionToggled value)? selectionToggled,
    TResult? Function(_ImportConfirmed value)? importConfirmed,
  }) {
    return importConfirmed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_QrScanned value)? qrScanned,
    TResult Function(_SelectionToggled value)? selectionToggled,
    TResult Function(_ImportConfirmed value)? importConfirmed,
    required TResult orElse(),
  }) {
    if (importConfirmed != null) {
      return importConfirmed(this);
    }
    return orElse();
  }
}

abstract class _ImportConfirmed implements AuthenticatorImportEvent {
  const factory _ImportConfirmed() = _$_ImportConfirmed;
}

/// @nodoc
mixin _$AuthenticatorImportState {
  /// Importable accounts from every scanned batch, in scan order.
  List<AuthenticatorEntry> get candidates => throw _privateConstructorUsedError;

  /// Ids already in the vault; shown but not selectable.
  Set<String> get existingIds => throw _privateConstructorUsedError;
  Set<String> get selectedIds => throw _privateConstructorUsedError;
  Set<int> get scannedBatches => throw _privateConstructorUsedError;
  int? get batchSize => throw _privateConstructorUsedError;
  int? get batchId => throw _privateConstructorUsedError;
  int get skippedCount => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  Option<Either<AuthenticatorFailure, Unit>> get scanFailureOrSuccess =>
      throw _privateConstructorUsedError;

  /// Right = number of accounts added.
  Option<Either<AuthenticatorFailure, int>> get importFailureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthenticatorImportStateCopyWith<AuthenticatorImportState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticatorImportStateCopyWith<$Res> {
  factory $AuthenticatorImportStateCopyWith(AuthenticatorImportState value,
          $Res Function(AuthenticatorImportState) then) =
      _$AuthenticatorImportStateCopyWithImpl<$Res, AuthenticatorImportState>;
  @useResult
  $Res call(
      {List<AuthenticatorEntry> candidates,
      Set<String> existingIds,
      Set<String> selectedIds,
      Set<int> scannedBatches,
      int? batchSize,
      int? batchId,
      int skippedCount,
      bool isSaving,
      Option<Either<AuthenticatorFailure, Unit>> scanFailureOrSuccess,
      Option<Either<AuthenticatorFailure, int>> importFailureOrSuccess});
}

/// @nodoc
class _$AuthenticatorImportStateCopyWithImpl<$Res,
        $Val extends AuthenticatorImportState>
    implements $AuthenticatorImportStateCopyWith<$Res> {
  _$AuthenticatorImportStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? candidates = null,
    Object? existingIds = null,
    Object? selectedIds = null,
    Object? scannedBatches = null,
    Object? batchSize = freezed,
    Object? batchId = freezed,
    Object? skippedCount = null,
    Object? isSaving = null,
    Object? scanFailureOrSuccess = null,
    Object? importFailureOrSuccess = null,
  }) {
    return _then(_value.copyWith(
      candidates: null == candidates
          ? _value.candidates
          : candidates // ignore: cast_nullable_to_non_nullable
              as List<AuthenticatorEntry>,
      existingIds: null == existingIds
          ? _value.existingIds
          : existingIds // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      selectedIds: null == selectedIds
          ? _value.selectedIds
          : selectedIds // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      scannedBatches: null == scannedBatches
          ? _value.scannedBatches
          : scannedBatches // ignore: cast_nullable_to_non_nullable
              as Set<int>,
      batchSize: freezed == batchSize
          ? _value.batchSize
          : batchSize // ignore: cast_nullable_to_non_nullable
              as int?,
      batchId: freezed == batchId
          ? _value.batchId
          : batchId // ignore: cast_nullable_to_non_nullable
              as int?,
      skippedCount: null == skippedCount
          ? _value.skippedCount
          : skippedCount // ignore: cast_nullable_to_non_nullable
              as int,
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      scanFailureOrSuccess: null == scanFailureOrSuccess
          ? _value.scanFailureOrSuccess
          : scanFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthenticatorFailure, Unit>>,
      importFailureOrSuccess: null == importFailureOrSuccess
          ? _value.importFailureOrSuccess
          : importFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthenticatorFailure, int>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthenticatorImportStateCopyWith<$Res>
    implements $AuthenticatorImportStateCopyWith<$Res> {
  factory _$$_AuthenticatorImportStateCopyWith(
          _$_AuthenticatorImportState value,
          $Res Function(_$_AuthenticatorImportState) then) =
      __$$_AuthenticatorImportStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<AuthenticatorEntry> candidates,
      Set<String> existingIds,
      Set<String> selectedIds,
      Set<int> scannedBatches,
      int? batchSize,
      int? batchId,
      int skippedCount,
      bool isSaving,
      Option<Either<AuthenticatorFailure, Unit>> scanFailureOrSuccess,
      Option<Either<AuthenticatorFailure, int>> importFailureOrSuccess});
}

/// @nodoc
class __$$_AuthenticatorImportStateCopyWithImpl<$Res>
    extends _$AuthenticatorImportStateCopyWithImpl<$Res,
        _$_AuthenticatorImportState>
    implements _$$_AuthenticatorImportStateCopyWith<$Res> {
  __$$_AuthenticatorImportStateCopyWithImpl(_$_AuthenticatorImportState _value,
      $Res Function(_$_AuthenticatorImportState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? candidates = null,
    Object? existingIds = null,
    Object? selectedIds = null,
    Object? scannedBatches = null,
    Object? batchSize = freezed,
    Object? batchId = freezed,
    Object? skippedCount = null,
    Object? isSaving = null,
    Object? scanFailureOrSuccess = null,
    Object? importFailureOrSuccess = null,
  }) {
    return _then(_$_AuthenticatorImportState(
      candidates: null == candidates
          ? _value._candidates
          : candidates // ignore: cast_nullable_to_non_nullable
              as List<AuthenticatorEntry>,
      existingIds: null == existingIds
          ? _value._existingIds
          : existingIds // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      selectedIds: null == selectedIds
          ? _value._selectedIds
          : selectedIds // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      scannedBatches: null == scannedBatches
          ? _value._scannedBatches
          : scannedBatches // ignore: cast_nullable_to_non_nullable
              as Set<int>,
      batchSize: freezed == batchSize
          ? _value.batchSize
          : batchSize // ignore: cast_nullable_to_non_nullable
              as int?,
      batchId: freezed == batchId
          ? _value.batchId
          : batchId // ignore: cast_nullable_to_non_nullable
              as int?,
      skippedCount: null == skippedCount
          ? _value.skippedCount
          : skippedCount // ignore: cast_nullable_to_non_nullable
              as int,
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      scanFailureOrSuccess: null == scanFailureOrSuccess
          ? _value.scanFailureOrSuccess
          : scanFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthenticatorFailure, Unit>>,
      importFailureOrSuccess: null == importFailureOrSuccess
          ? _value.importFailureOrSuccess
          : importFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthenticatorFailure, int>>,
    ));
  }
}

/// @nodoc

class _$_AuthenticatorImportState extends _AuthenticatorImportState {
  const _$_AuthenticatorImportState(
      {required final List<AuthenticatorEntry> candidates,
      required final Set<String> existingIds,
      required final Set<String> selectedIds,
      required final Set<int> scannedBatches,
      this.batchSize,
      this.batchId,
      required this.skippedCount,
      required this.isSaving,
      required this.scanFailureOrSuccess,
      required this.importFailureOrSuccess})
      : _candidates = candidates,
        _existingIds = existingIds,
        _selectedIds = selectedIds,
        _scannedBatches = scannedBatches,
        super._();

  /// Importable accounts from every scanned batch, in scan order.
  final List<AuthenticatorEntry> _candidates;

  /// Importable accounts from every scanned batch, in scan order.
  @override
  List<AuthenticatorEntry> get candidates {
    if (_candidates is EqualUnmodifiableListView) return _candidates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_candidates);
  }

  /// Ids already in the vault; shown but not selectable.
  final Set<String> _existingIds;

  /// Ids already in the vault; shown but not selectable.
  @override
  Set<String> get existingIds {
    if (_existingIds is EqualUnmodifiableSetView) return _existingIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_existingIds);
  }

  final Set<String> _selectedIds;
  @override
  Set<String> get selectedIds {
    if (_selectedIds is EqualUnmodifiableSetView) return _selectedIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_selectedIds);
  }

  final Set<int> _scannedBatches;
  @override
  Set<int> get scannedBatches {
    if (_scannedBatches is EqualUnmodifiableSetView) return _scannedBatches;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_scannedBatches);
  }

  @override
  final int? batchSize;
  @override
  final int? batchId;
  @override
  final int skippedCount;
  @override
  final bool isSaving;
  @override
  final Option<Either<AuthenticatorFailure, Unit>> scanFailureOrSuccess;

  /// Right = number of accounts added.
  @override
  final Option<Either<AuthenticatorFailure, int>> importFailureOrSuccess;

  @override
  String toString() {
    return 'AuthenticatorImportState(candidates: $candidates, existingIds: $existingIds, selectedIds: $selectedIds, scannedBatches: $scannedBatches, batchSize: $batchSize, batchId: $batchId, skippedCount: $skippedCount, isSaving: $isSaving, scanFailureOrSuccess: $scanFailureOrSuccess, importFailureOrSuccess: $importFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthenticatorImportState &&
            const DeepCollectionEquality()
                .equals(other._candidates, _candidates) &&
            const DeepCollectionEquality()
                .equals(other._existingIds, _existingIds) &&
            const DeepCollectionEquality()
                .equals(other._selectedIds, _selectedIds) &&
            const DeepCollectionEquality()
                .equals(other._scannedBatches, _scannedBatches) &&
            (identical(other.batchSize, batchSize) ||
                other.batchSize == batchSize) &&
            (identical(other.batchId, batchId) || other.batchId == batchId) &&
            (identical(other.skippedCount, skippedCount) ||
                other.skippedCount == skippedCount) &&
            (identical(other.isSaving, isSaving) ||
                other.isSaving == isSaving) &&
            (identical(other.scanFailureOrSuccess, scanFailureOrSuccess) ||
                other.scanFailureOrSuccess == scanFailureOrSuccess) &&
            (identical(other.importFailureOrSuccess, importFailureOrSuccess) ||
                other.importFailureOrSuccess == importFailureOrSuccess));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_candidates),
      const DeepCollectionEquality().hash(_existingIds),
      const DeepCollectionEquality().hash(_selectedIds),
      const DeepCollectionEquality().hash(_scannedBatches),
      batchSize,
      batchId,
      skippedCount,
      isSaving,
      scanFailureOrSuccess,
      importFailureOrSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthenticatorImportStateCopyWith<_$_AuthenticatorImportState>
      get copyWith => __$$_AuthenticatorImportStateCopyWithImpl<
          _$_AuthenticatorImportState>(this, _$identity);
}

abstract class _AuthenticatorImportState extends AuthenticatorImportState {
  const factory _AuthenticatorImportState(
      {required final List<AuthenticatorEntry> candidates,
      required final Set<String> existingIds,
      required final Set<String> selectedIds,
      required final Set<int> scannedBatches,
      final int? batchSize,
      final int? batchId,
      required final int skippedCount,
      required final bool isSaving,
      required final Option<Either<AuthenticatorFailure, Unit>>
          scanFailureOrSuccess,
      required final Option<Either<AuthenticatorFailure, int>>
          importFailureOrSuccess}) = _$_AuthenticatorImportState;
  const _AuthenticatorImportState._() : super._();

  @override

  /// Importable accounts from every scanned batch, in scan order.
  List<AuthenticatorEntry> get candidates;
  @override

  /// Ids already in the vault; shown but not selectable.
  Set<String> get existingIds;
  @override
  Set<String> get selectedIds;
  @override
  Set<int> get scannedBatches;
  @override
  int? get batchSize;
  @override
  int? get batchId;
  @override
  int get skippedCount;
  @override
  bool get isSaving;
  @override
  Option<Either<AuthenticatorFailure, Unit>> get scanFailureOrSuccess;
  @override

  /// Right = number of accounts added.
  Option<Either<AuthenticatorFailure, int>> get importFailureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$$_AuthenticatorImportStateCopyWith<_$_AuthenticatorImportState>
      get copyWith => throw _privateConstructorUsedError;
}
