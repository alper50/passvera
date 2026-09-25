// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'storage_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StorageFailure {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is StorageFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'StorageFailure()';
  }
}

/// @nodoc
class $StorageFailureCopyWith<$Res> {
  $StorageFailureCopyWith(StorageFailure _, $Res Function(StorageFailure) __);
}

/// Adds pattern-matching-related methods to [StorageFailure].
extension StorageFailurePatterns on StorageFailure {
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
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_KeyAlreadyUsed value)? keyAlreadyUsed,
    TResult Function(_InsufficientPermission value)? insufficientPermission,
    TResult Function(_EmptyKey value)? emptyKey,
    TResult Function(_ModelNotValid value)? modelNotValid,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Unexpected() when unexpected != null:
        return unexpected(_that);
      case _KeyAlreadyUsed() when keyAlreadyUsed != null:
        return keyAlreadyUsed(_that);
      case _InsufficientPermission() when insufficientPermission != null:
        return insufficientPermission(_that);
      case _EmptyKey() when emptyKey != null:
        return emptyKey(_that);
      case _ModelNotValid() when modelNotValid != null:
        return modelNotValid(_that);
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
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_KeyAlreadyUsed value) keyAlreadyUsed,
    required TResult Function(_InsufficientPermission value)
        insufficientPermission,
    required TResult Function(_EmptyKey value) emptyKey,
    required TResult Function(_ModelNotValid value) modelNotValid,
  }) {
    final _that = this;
    switch (_that) {
      case _Unexpected():
        return unexpected(_that);
      case _KeyAlreadyUsed():
        return keyAlreadyUsed(_that);
      case _InsufficientPermission():
        return insufficientPermission(_that);
      case _EmptyKey():
        return emptyKey(_that);
      case _ModelNotValid():
        return modelNotValid(_that);
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
    TResult? Function(_Unexpected value)? unexpected,
    TResult? Function(_KeyAlreadyUsed value)? keyAlreadyUsed,
    TResult? Function(_InsufficientPermission value)? insufficientPermission,
    TResult? Function(_EmptyKey value)? emptyKey,
    TResult? Function(_ModelNotValid value)? modelNotValid,
  }) {
    final _that = this;
    switch (_that) {
      case _Unexpected() when unexpected != null:
        return unexpected(_that);
      case _KeyAlreadyUsed() when keyAlreadyUsed != null:
        return keyAlreadyUsed(_that);
      case _InsufficientPermission() when insufficientPermission != null:
        return insufficientPermission(_that);
      case _EmptyKey() when emptyKey != null:
        return emptyKey(_that);
      case _ModelNotValid() when modelNotValid != null:
        return modelNotValid(_that);
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
    TResult Function(dynamic e)? unexpected,
    TResult Function()? keyAlreadyUsed,
    TResult Function()? insufficientPermission,
    TResult Function()? emptyKey,
    TResult Function()? modelNotValid,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Unexpected() when unexpected != null:
        return unexpected(_that.e);
      case _KeyAlreadyUsed() when keyAlreadyUsed != null:
        return keyAlreadyUsed();
      case _InsufficientPermission() when insufficientPermission != null:
        return insufficientPermission();
      case _EmptyKey() when emptyKey != null:
        return emptyKey();
      case _ModelNotValid() when modelNotValid != null:
        return modelNotValid();
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
    required TResult Function(dynamic e) unexpected,
    required TResult Function() keyAlreadyUsed,
    required TResult Function() insufficientPermission,
    required TResult Function() emptyKey,
    required TResult Function() modelNotValid,
  }) {
    final _that = this;
    switch (_that) {
      case _Unexpected():
        return unexpected(_that.e);
      case _KeyAlreadyUsed():
        return keyAlreadyUsed();
      case _InsufficientPermission():
        return insufficientPermission();
      case _EmptyKey():
        return emptyKey();
      case _ModelNotValid():
        return modelNotValid();
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
    TResult? Function(dynamic e)? unexpected,
    TResult? Function()? keyAlreadyUsed,
    TResult? Function()? insufficientPermission,
    TResult? Function()? emptyKey,
    TResult? Function()? modelNotValid,
  }) {
    final _that = this;
    switch (_that) {
      case _Unexpected() when unexpected != null:
        return unexpected(_that.e);
      case _KeyAlreadyUsed() when keyAlreadyUsed != null:
        return keyAlreadyUsed();
      case _InsufficientPermission() when insufficientPermission != null:
        return insufficientPermission();
      case _EmptyKey() when emptyKey != null:
        return emptyKey();
      case _ModelNotValid() when modelNotValid != null:
        return modelNotValid();
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Unexpected implements StorageFailure {
  const _Unexpected(this.e);

  final dynamic e;

  /// Create a copy of StorageFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UnexpectedCopyWith<_Unexpected> get copyWith =>
      __$UnexpectedCopyWithImpl<_Unexpected>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Unexpected &&
            const DeepCollectionEquality().equals(other.e, e));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(e));

  @override
  String toString() {
    return 'StorageFailure.unexpected(e: $e)';
  }
}

/// @nodoc
abstract mixin class _$UnexpectedCopyWith<$Res>
    implements $StorageFailureCopyWith<$Res> {
  factory _$UnexpectedCopyWith(
          _Unexpected value, $Res Function(_Unexpected) _then) =
      __$UnexpectedCopyWithImpl;
  @useResult
  $Res call({dynamic e});
}

/// @nodoc
class __$UnexpectedCopyWithImpl<$Res> implements _$UnexpectedCopyWith<$Res> {
  __$UnexpectedCopyWithImpl(this._self, this._then);

  final _Unexpected _self;
  final $Res Function(_Unexpected) _then;

  /// Create a copy of StorageFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? e = freezed,
  }) {
    return _then(_Unexpected(
      freezed == e
          ? _self.e
          : e // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _KeyAlreadyUsed implements StorageFailure {
  const _KeyAlreadyUsed();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _KeyAlreadyUsed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'StorageFailure.keyAlreadyUsed()';
  }
}

/// @nodoc

class _InsufficientPermission implements StorageFailure {
  const _InsufficientPermission();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _InsufficientPermission);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'StorageFailure.insufficientPermission()';
  }
}

/// @nodoc

class _EmptyKey implements StorageFailure {
  const _EmptyKey();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _EmptyKey);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'StorageFailure.emptyKey()';
  }
}

/// @nodoc

class _ModelNotValid implements StorageFailure {
  const _ModelNotValid();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ModelNotValid);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'StorageFailure.modelNotValid()';
  }
}

// dart format on
