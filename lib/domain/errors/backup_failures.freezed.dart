// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'backup_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BackupFailure {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is BackupFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'BackupFailure()';
  }
}

/// @nodoc
class $BackupFailureCopyWith<$Res> {
  $BackupFailureCopyWith(BackupFailure _, $Res Function(BackupFailure) __);
}

/// Adds pattern-matching-related methods to [BackupFailure].
extension BackupFailurePatterns on BackupFailure {
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
    TResult Function(_NotConfigured value)? notConfigured,
    TResult Function(_Cancelled value)? cancelled,
    TResult Function(_AuthorizationRequired value)? authorizationRequired,
    TResult Function(_Network value)? network,
    TResult Function(_InvalidRecoveryKey value)? invalidRecoveryKey,
    TResult Function(_WrongRecoveryKey value)? wrongRecoveryKey,
    TResult Function(_CorruptedBackup value)? corruptedBackup,
    TResult Function(_UnsupportedVersion value)? unsupportedVersion,
    TResult Function(_NoBackups value)? noBackups,
    TResult Function(_NotEnabled value)? notEnabled,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Unexpected() when unexpected != null:
        return unexpected(_that);
      case _NotConfigured() when notConfigured != null:
        return notConfigured(_that);
      case _Cancelled() when cancelled != null:
        return cancelled(_that);
      case _AuthorizationRequired() when authorizationRequired != null:
        return authorizationRequired(_that);
      case _Network() when network != null:
        return network(_that);
      case _InvalidRecoveryKey() when invalidRecoveryKey != null:
        return invalidRecoveryKey(_that);
      case _WrongRecoveryKey() when wrongRecoveryKey != null:
        return wrongRecoveryKey(_that);
      case _CorruptedBackup() when corruptedBackup != null:
        return corruptedBackup(_that);
      case _UnsupportedVersion() when unsupportedVersion != null:
        return unsupportedVersion(_that);
      case _NoBackups() when noBackups != null:
        return noBackups(_that);
      case _NotEnabled() when notEnabled != null:
        return notEnabled(_that);
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
    required TResult Function(_NotConfigured value) notConfigured,
    required TResult Function(_Cancelled value) cancelled,
    required TResult Function(_AuthorizationRequired value)
        authorizationRequired,
    required TResult Function(_Network value) network,
    required TResult Function(_InvalidRecoveryKey value) invalidRecoveryKey,
    required TResult Function(_WrongRecoveryKey value) wrongRecoveryKey,
    required TResult Function(_CorruptedBackup value) corruptedBackup,
    required TResult Function(_UnsupportedVersion value) unsupportedVersion,
    required TResult Function(_NoBackups value) noBackups,
    required TResult Function(_NotEnabled value) notEnabled,
  }) {
    final _that = this;
    switch (_that) {
      case _Unexpected():
        return unexpected(_that);
      case _NotConfigured():
        return notConfigured(_that);
      case _Cancelled():
        return cancelled(_that);
      case _AuthorizationRequired():
        return authorizationRequired(_that);
      case _Network():
        return network(_that);
      case _InvalidRecoveryKey():
        return invalidRecoveryKey(_that);
      case _WrongRecoveryKey():
        return wrongRecoveryKey(_that);
      case _CorruptedBackup():
        return corruptedBackup(_that);
      case _UnsupportedVersion():
        return unsupportedVersion(_that);
      case _NoBackups():
        return noBackups(_that);
      case _NotEnabled():
        return notEnabled(_that);
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
    TResult? Function(_NotConfigured value)? notConfigured,
    TResult? Function(_Cancelled value)? cancelled,
    TResult? Function(_AuthorizationRequired value)? authorizationRequired,
    TResult? Function(_Network value)? network,
    TResult? Function(_InvalidRecoveryKey value)? invalidRecoveryKey,
    TResult? Function(_WrongRecoveryKey value)? wrongRecoveryKey,
    TResult? Function(_CorruptedBackup value)? corruptedBackup,
    TResult? Function(_UnsupportedVersion value)? unsupportedVersion,
    TResult? Function(_NoBackups value)? noBackups,
    TResult? Function(_NotEnabled value)? notEnabled,
  }) {
    final _that = this;
    switch (_that) {
      case _Unexpected() when unexpected != null:
        return unexpected(_that);
      case _NotConfigured() when notConfigured != null:
        return notConfigured(_that);
      case _Cancelled() when cancelled != null:
        return cancelled(_that);
      case _AuthorizationRequired() when authorizationRequired != null:
        return authorizationRequired(_that);
      case _Network() when network != null:
        return network(_that);
      case _InvalidRecoveryKey() when invalidRecoveryKey != null:
        return invalidRecoveryKey(_that);
      case _WrongRecoveryKey() when wrongRecoveryKey != null:
        return wrongRecoveryKey(_that);
      case _CorruptedBackup() when corruptedBackup != null:
        return corruptedBackup(_that);
      case _UnsupportedVersion() when unsupportedVersion != null:
        return unsupportedVersion(_that);
      case _NoBackups() when noBackups != null:
        return noBackups(_that);
      case _NotEnabled() when notEnabled != null:
        return notEnabled(_that);
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
    TResult Function()? notConfigured,
    TResult Function()? cancelled,
    TResult Function()? authorizationRequired,
    TResult Function()? network,
    TResult Function()? invalidRecoveryKey,
    TResult Function()? wrongRecoveryKey,
    TResult Function()? corruptedBackup,
    TResult Function()? unsupportedVersion,
    TResult Function()? noBackups,
    TResult Function()? notEnabled,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Unexpected() when unexpected != null:
        return unexpected(_that.e);
      case _NotConfigured() when notConfigured != null:
        return notConfigured();
      case _Cancelled() when cancelled != null:
        return cancelled();
      case _AuthorizationRequired() when authorizationRequired != null:
        return authorizationRequired();
      case _Network() when network != null:
        return network();
      case _InvalidRecoveryKey() when invalidRecoveryKey != null:
        return invalidRecoveryKey();
      case _WrongRecoveryKey() when wrongRecoveryKey != null:
        return wrongRecoveryKey();
      case _CorruptedBackup() when corruptedBackup != null:
        return corruptedBackup();
      case _UnsupportedVersion() when unsupportedVersion != null:
        return unsupportedVersion();
      case _NoBackups() when noBackups != null:
        return noBackups();
      case _NotEnabled() when notEnabled != null:
        return notEnabled();
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
    required TResult Function() notConfigured,
    required TResult Function() cancelled,
    required TResult Function() authorizationRequired,
    required TResult Function() network,
    required TResult Function() invalidRecoveryKey,
    required TResult Function() wrongRecoveryKey,
    required TResult Function() corruptedBackup,
    required TResult Function() unsupportedVersion,
    required TResult Function() noBackups,
    required TResult Function() notEnabled,
  }) {
    final _that = this;
    switch (_that) {
      case _Unexpected():
        return unexpected(_that.e);
      case _NotConfigured():
        return notConfigured();
      case _Cancelled():
        return cancelled();
      case _AuthorizationRequired():
        return authorizationRequired();
      case _Network():
        return network();
      case _InvalidRecoveryKey():
        return invalidRecoveryKey();
      case _WrongRecoveryKey():
        return wrongRecoveryKey();
      case _CorruptedBackup():
        return corruptedBackup();
      case _UnsupportedVersion():
        return unsupportedVersion();
      case _NoBackups():
        return noBackups();
      case _NotEnabled():
        return notEnabled();
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
    TResult? Function()? notConfigured,
    TResult? Function()? cancelled,
    TResult? Function()? authorizationRequired,
    TResult? Function()? network,
    TResult? Function()? invalidRecoveryKey,
    TResult? Function()? wrongRecoveryKey,
    TResult? Function()? corruptedBackup,
    TResult? Function()? unsupportedVersion,
    TResult? Function()? noBackups,
    TResult? Function()? notEnabled,
  }) {
    final _that = this;
    switch (_that) {
      case _Unexpected() when unexpected != null:
        return unexpected(_that.e);
      case _NotConfigured() when notConfigured != null:
        return notConfigured();
      case _Cancelled() when cancelled != null:
        return cancelled();
      case _AuthorizationRequired() when authorizationRequired != null:
        return authorizationRequired();
      case _Network() when network != null:
        return network();
      case _InvalidRecoveryKey() when invalidRecoveryKey != null:
        return invalidRecoveryKey();
      case _WrongRecoveryKey() when wrongRecoveryKey != null:
        return wrongRecoveryKey();
      case _CorruptedBackup() when corruptedBackup != null:
        return corruptedBackup();
      case _UnsupportedVersion() when unsupportedVersion != null:
        return unsupportedVersion();
      case _NoBackups() when noBackups != null:
        return noBackups();
      case _NotEnabled() when notEnabled != null:
        return notEnabled();
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Unexpected implements BackupFailure {
  const _Unexpected(this.e);

  final dynamic e;

  /// Create a copy of BackupFailure
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
    return 'BackupFailure.unexpected(e: $e)';
  }
}

/// @nodoc
abstract mixin class _$UnexpectedCopyWith<$Res>
    implements $BackupFailureCopyWith<$Res> {
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

  /// Create a copy of BackupFailure
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

class _NotConfigured implements BackupFailure {
  const _NotConfigured();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _NotConfigured);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'BackupFailure.notConfigured()';
  }
}

/// @nodoc

class _Cancelled implements BackupFailure {
  const _Cancelled();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Cancelled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'BackupFailure.cancelled()';
  }
}

/// @nodoc

class _AuthorizationRequired implements BackupFailure {
  const _AuthorizationRequired();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _AuthorizationRequired);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'BackupFailure.authorizationRequired()';
  }
}

/// @nodoc

class _Network implements BackupFailure {
  const _Network();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Network);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'BackupFailure.network()';
  }
}

/// @nodoc

class _InvalidRecoveryKey implements BackupFailure {
  const _InvalidRecoveryKey();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _InvalidRecoveryKey);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'BackupFailure.invalidRecoveryKey()';
  }
}

/// @nodoc

class _WrongRecoveryKey implements BackupFailure {
  const _WrongRecoveryKey();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _WrongRecoveryKey);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'BackupFailure.wrongRecoveryKey()';
  }
}

/// @nodoc

class _CorruptedBackup implements BackupFailure {
  const _CorruptedBackup();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _CorruptedBackup);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'BackupFailure.corruptedBackup()';
  }
}

/// @nodoc

class _UnsupportedVersion implements BackupFailure {
  const _UnsupportedVersion();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _UnsupportedVersion);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'BackupFailure.unsupportedVersion()';
  }
}

/// @nodoc

class _NoBackups implements BackupFailure {
  const _NoBackups();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _NoBackups);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'BackupFailure.noBackups()';
  }
}

/// @nodoc

class _NotEnabled implements BackupFailure {
  const _NotEnabled();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _NotEnabled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'BackupFailure.notEnabled()';
  }
}

// dart format on
