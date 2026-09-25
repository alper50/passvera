// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authenticator_import_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuthenticatorImportEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthenticatorImportEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthenticatorImportEvent()';
  }
}

/// @nodoc
class $AuthenticatorImportEventCopyWith<$Res> {
  $AuthenticatorImportEventCopyWith(
      AuthenticatorImportEvent _, $Res Function(AuthenticatorImportEvent) __);
}

/// Adds pattern-matching-related methods to [AuthenticatorImportEvent].
extension AuthenticatorImportEventPatterns on AuthenticatorImportEvent {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_QrScanned value)? qrScanned,
    TResult Function(_SelectionToggled value)? selectionToggled,
    TResult Function(_ImportConfirmed value)? importConfirmed,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Started() when started != null:
        return started(_that);
      case _QrScanned() when qrScanned != null:
        return qrScanned(_that);
      case _SelectionToggled() when selectionToggled != null:
        return selectionToggled(_that);
      case _ImportConfirmed() when importConfirmed != null:
        return importConfirmed(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_QrScanned value) qrScanned,
    required TResult Function(_SelectionToggled value) selectionToggled,
    required TResult Function(_ImportConfirmed value) importConfirmed,
  }) {
    final _that = this;
    switch (_that) {
      case _Started():
        return started(_that);
      case _QrScanned():
        return qrScanned(_that);
      case _SelectionToggled():
        return selectionToggled(_that);
      case _ImportConfirmed():
        return importConfirmed(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_QrScanned value)? qrScanned,
    TResult? Function(_SelectionToggled value)? selectionToggled,
    TResult? Function(_ImportConfirmed value)? importConfirmed,
  }) {
    final _that = this;
    switch (_that) {
      case _Started() when started != null:
        return started(_that);
      case _QrScanned() when qrScanned != null:
        return qrScanned(_that);
      case _SelectionToggled() when selectionToggled != null:
        return selectionToggled(_that);
      case _ImportConfirmed() when importConfirmed != null:
        return importConfirmed(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String raw)? qrScanned,
    TResult Function(String id)? selectionToggled,
    TResult Function()? importConfirmed,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Started() when started != null:
        return started();
      case _QrScanned() when qrScanned != null:
        return qrScanned(_that.raw);
      case _SelectionToggled() when selectionToggled != null:
        return selectionToggled(_that.id);
      case _ImportConfirmed() when importConfirmed != null:
        return importConfirmed();
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String raw) qrScanned,
    required TResult Function(String id) selectionToggled,
    required TResult Function() importConfirmed,
  }) {
    final _that = this;
    switch (_that) {
      case _Started():
        return started();
      case _QrScanned():
        return qrScanned(_that.raw);
      case _SelectionToggled():
        return selectionToggled(_that.id);
      case _ImportConfirmed():
        return importConfirmed();
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String raw)? qrScanned,
    TResult? Function(String id)? selectionToggled,
    TResult? Function()? importConfirmed,
  }) {
    final _that = this;
    switch (_that) {
      case _Started() when started != null:
        return started();
      case _QrScanned() when qrScanned != null:
        return qrScanned(_that.raw);
      case _SelectionToggled() when selectionToggled != null:
        return selectionToggled(_that.id);
      case _ImportConfirmed() when importConfirmed != null:
        return importConfirmed();
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Started implements AuthenticatorImportEvent {
  const _Started();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthenticatorImportEvent.started()';
  }
}

/// @nodoc

class _QrScanned implements AuthenticatorImportEvent {
  const _QrScanned(this.raw);

  final String raw;

  /// Create a copy of AuthenticatorImportEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$QrScannedCopyWith<_QrScanned> get copyWith =>
      __$QrScannedCopyWithImpl<_QrScanned>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _QrScanned &&
            (identical(other.raw, raw) || other.raw == raw));
  }

  @override
  int get hashCode => Object.hash(runtimeType, raw);

  @override
  String toString() {
    return 'AuthenticatorImportEvent.qrScanned(raw: $raw)';
  }
}

/// @nodoc
abstract mixin class _$QrScannedCopyWith<$Res>
    implements $AuthenticatorImportEventCopyWith<$Res> {
  factory _$QrScannedCopyWith(
          _QrScanned value, $Res Function(_QrScanned) _then) =
      __$QrScannedCopyWithImpl;
  @useResult
  $Res call({String raw});
}

/// @nodoc
class __$QrScannedCopyWithImpl<$Res> implements _$QrScannedCopyWith<$Res> {
  __$QrScannedCopyWithImpl(this._self, this._then);

  final _QrScanned _self;
  final $Res Function(_QrScanned) _then;

  /// Create a copy of AuthenticatorImportEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? raw = null,
  }) {
    return _then(_QrScanned(
      null == raw
          ? _self.raw
          : raw // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _SelectionToggled implements AuthenticatorImportEvent {
  const _SelectionToggled(this.id);

  final String id;

  /// Create a copy of AuthenticatorImportEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SelectionToggledCopyWith<_SelectionToggled> get copyWith =>
      __$SelectionToggledCopyWithImpl<_SelectionToggled>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SelectionToggled &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @override
  String toString() {
    return 'AuthenticatorImportEvent.selectionToggled(id: $id)';
  }
}

/// @nodoc
abstract mixin class _$SelectionToggledCopyWith<$Res>
    implements $AuthenticatorImportEventCopyWith<$Res> {
  factory _$SelectionToggledCopyWith(
          _SelectionToggled value, $Res Function(_SelectionToggled) _then) =
      __$SelectionToggledCopyWithImpl;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$SelectionToggledCopyWithImpl<$Res>
    implements _$SelectionToggledCopyWith<$Res> {
  __$SelectionToggledCopyWithImpl(this._self, this._then);

  final _SelectionToggled _self;
  final $Res Function(_SelectionToggled) _then;

  /// Create a copy of AuthenticatorImportEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
  }) {
    return _then(_SelectionToggled(
      null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _ImportConfirmed implements AuthenticatorImportEvent {
  const _ImportConfirmed();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ImportConfirmed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthenticatorImportEvent.importConfirmed()';
  }
}

/// @nodoc
mixin _$AuthenticatorImportState {
  /// Importable accounts from every scanned batch, in scan order.
  List<AuthenticatorEntry> get candidates;

  /// Ids already in the vault; shown but not selectable.
  Set<String> get existingIds;
  Set<String> get selectedIds;
  Set<int> get scannedBatches;
  int? get batchSize;
  int? get batchId;
  int get skippedCount;
  bool get isSaving;
  Option<Either<AuthenticatorFailure, Unit>> get scanFailureOrSuccess;

  /// Right = number of accounts added.
  Option<Either<AuthenticatorFailure, int>> get importFailureOrSuccess;

  /// Create a copy of AuthenticatorImportState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AuthenticatorImportStateCopyWith<AuthenticatorImportState> get copyWith =>
      _$AuthenticatorImportStateCopyWithImpl<AuthenticatorImportState>(
          this as AuthenticatorImportState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthenticatorImportState &&
            const DeepCollectionEquality()
                .equals(other.candidates, candidates) &&
            const DeepCollectionEquality()
                .equals(other.existingIds, existingIds) &&
            const DeepCollectionEquality()
                .equals(other.selectedIds, selectedIds) &&
            const DeepCollectionEquality()
                .equals(other.scannedBatches, scannedBatches) &&
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
      const DeepCollectionEquality().hash(candidates),
      const DeepCollectionEquality().hash(existingIds),
      const DeepCollectionEquality().hash(selectedIds),
      const DeepCollectionEquality().hash(scannedBatches),
      batchSize,
      batchId,
      skippedCount,
      isSaving,
      scanFailureOrSuccess,
      importFailureOrSuccess);

  @override
  String toString() {
    return 'AuthenticatorImportState(candidates: $candidates, existingIds: $existingIds, selectedIds: $selectedIds, scannedBatches: $scannedBatches, batchSize: $batchSize, batchId: $batchId, skippedCount: $skippedCount, isSaving: $isSaving, scanFailureOrSuccess: $scanFailureOrSuccess, importFailureOrSuccess: $importFailureOrSuccess)';
  }
}

/// @nodoc
abstract mixin class $AuthenticatorImportStateCopyWith<$Res> {
  factory $AuthenticatorImportStateCopyWith(AuthenticatorImportState value,
          $Res Function(AuthenticatorImportState) _then) =
      _$AuthenticatorImportStateCopyWithImpl;
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
class _$AuthenticatorImportStateCopyWithImpl<$Res>
    implements $AuthenticatorImportStateCopyWith<$Res> {
  _$AuthenticatorImportStateCopyWithImpl(this._self, this._then);

  final AuthenticatorImportState _self;
  final $Res Function(AuthenticatorImportState) _then;

  /// Create a copy of AuthenticatorImportState
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      candidates: null == candidates
          ? _self.candidates
          : candidates // ignore: cast_nullable_to_non_nullable
              as List<AuthenticatorEntry>,
      existingIds: null == existingIds
          ? _self.existingIds
          : existingIds // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      selectedIds: null == selectedIds
          ? _self.selectedIds
          : selectedIds // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      scannedBatches: null == scannedBatches
          ? _self.scannedBatches
          : scannedBatches // ignore: cast_nullable_to_non_nullable
              as Set<int>,
      batchSize: freezed == batchSize
          ? _self.batchSize
          : batchSize // ignore: cast_nullable_to_non_nullable
              as int?,
      batchId: freezed == batchId
          ? _self.batchId
          : batchId // ignore: cast_nullable_to_non_nullable
              as int?,
      skippedCount: null == skippedCount
          ? _self.skippedCount
          : skippedCount // ignore: cast_nullable_to_non_nullable
              as int,
      isSaving: null == isSaving
          ? _self.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      scanFailureOrSuccess: null == scanFailureOrSuccess
          ? _self.scanFailureOrSuccess
          : scanFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthenticatorFailure, Unit>>,
      importFailureOrSuccess: null == importFailureOrSuccess
          ? _self.importFailureOrSuccess
          : importFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthenticatorFailure, int>>,
    ));
  }
}

/// Adds pattern-matching-related methods to [AuthenticatorImportState].
extension AuthenticatorImportStatePatterns on AuthenticatorImportState {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AuthenticatorImportState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AuthenticatorImportState() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AuthenticatorImportState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AuthenticatorImportState():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AuthenticatorImportState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AuthenticatorImportState() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            List<AuthenticatorEntry> candidates,
            Set<String> existingIds,
            Set<String> selectedIds,
            Set<int> scannedBatches,
            int? batchSize,
            int? batchId,
            int skippedCount,
            bool isSaving,
            Option<Either<AuthenticatorFailure, Unit>> scanFailureOrSuccess,
            Option<Either<AuthenticatorFailure, int>> importFailureOrSuccess)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AuthenticatorImportState() when $default != null:
        return $default(
            _that.candidates,
            _that.existingIds,
            _that.selectedIds,
            _that.scannedBatches,
            _that.batchSize,
            _that.batchId,
            _that.skippedCount,
            _that.isSaving,
            _that.scanFailureOrSuccess,
            _that.importFailureOrSuccess);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            List<AuthenticatorEntry> candidates,
            Set<String> existingIds,
            Set<String> selectedIds,
            Set<int> scannedBatches,
            int? batchSize,
            int? batchId,
            int skippedCount,
            bool isSaving,
            Option<Either<AuthenticatorFailure, Unit>> scanFailureOrSuccess,
            Option<Either<AuthenticatorFailure, int>> importFailureOrSuccess)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AuthenticatorImportState():
        return $default(
            _that.candidates,
            _that.existingIds,
            _that.selectedIds,
            _that.scannedBatches,
            _that.batchSize,
            _that.batchId,
            _that.skippedCount,
            _that.isSaving,
            _that.scanFailureOrSuccess,
            _that.importFailureOrSuccess);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            List<AuthenticatorEntry> candidates,
            Set<String> existingIds,
            Set<String> selectedIds,
            Set<int> scannedBatches,
            int? batchSize,
            int? batchId,
            int skippedCount,
            bool isSaving,
            Option<Either<AuthenticatorFailure, Unit>> scanFailureOrSuccess,
            Option<Either<AuthenticatorFailure, int>> importFailureOrSuccess)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AuthenticatorImportState() when $default != null:
        return $default(
            _that.candidates,
            _that.existingIds,
            _that.selectedIds,
            _that.scannedBatches,
            _that.batchSize,
            _that.batchId,
            _that.skippedCount,
            _that.isSaving,
            _that.scanFailureOrSuccess,
            _that.importFailureOrSuccess);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _AuthenticatorImportState extends AuthenticatorImportState {
  const _AuthenticatorImportState(
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

  /// Create a copy of AuthenticatorImportState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AuthenticatorImportStateCopyWith<_AuthenticatorImportState> get copyWith =>
      __$AuthenticatorImportStateCopyWithImpl<_AuthenticatorImportState>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuthenticatorImportState &&
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

  @override
  String toString() {
    return 'AuthenticatorImportState(candidates: $candidates, existingIds: $existingIds, selectedIds: $selectedIds, scannedBatches: $scannedBatches, batchSize: $batchSize, batchId: $batchId, skippedCount: $skippedCount, isSaving: $isSaving, scanFailureOrSuccess: $scanFailureOrSuccess, importFailureOrSuccess: $importFailureOrSuccess)';
  }
}

/// @nodoc
abstract mixin class _$AuthenticatorImportStateCopyWith<$Res>
    implements $AuthenticatorImportStateCopyWith<$Res> {
  factory _$AuthenticatorImportStateCopyWith(_AuthenticatorImportState value,
          $Res Function(_AuthenticatorImportState) _then) =
      __$AuthenticatorImportStateCopyWithImpl;
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
class __$AuthenticatorImportStateCopyWithImpl<$Res>
    implements _$AuthenticatorImportStateCopyWith<$Res> {
  __$AuthenticatorImportStateCopyWithImpl(this._self, this._then);

  final _AuthenticatorImportState _self;
  final $Res Function(_AuthenticatorImportState) _then;

  /// Create a copy of AuthenticatorImportState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_AuthenticatorImportState(
      candidates: null == candidates
          ? _self._candidates
          : candidates // ignore: cast_nullable_to_non_nullable
              as List<AuthenticatorEntry>,
      existingIds: null == existingIds
          ? _self._existingIds
          : existingIds // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      selectedIds: null == selectedIds
          ? _self._selectedIds
          : selectedIds // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      scannedBatches: null == scannedBatches
          ? _self._scannedBatches
          : scannedBatches // ignore: cast_nullable_to_non_nullable
              as Set<int>,
      batchSize: freezed == batchSize
          ? _self.batchSize
          : batchSize // ignore: cast_nullable_to_non_nullable
              as int?,
      batchId: freezed == batchId
          ? _self.batchId
          : batchId // ignore: cast_nullable_to_non_nullable
              as int?,
      skippedCount: null == skippedCount
          ? _self.skippedCount
          : skippedCount // ignore: cast_nullable_to_non_nullable
              as int,
      isSaving: null == isSaving
          ? _self.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      scanFailureOrSuccess: null == scanFailureOrSuccess
          ? _self.scanFailureOrSuccess
          : scanFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthenticatorFailure, Unit>>,
      importFailureOrSuccess: null == importFailureOrSuccess
          ? _self.importFailureOrSuccess
          : importFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthenticatorFailure, int>>,
    ));
  }
}

// dart format on
