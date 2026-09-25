// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recovery_key.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RecoveryKey {
  List<int> get entropy;

  /// Create a copy of RecoveryKey
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RecoveryKeyCopyWith<RecoveryKey> get copyWith =>
      _$RecoveryKeyCopyWithImpl<RecoveryKey>(this as RecoveryKey, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RecoveryKey &&
            const DeepCollectionEquality().equals(other.entropy, entropy));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(entropy));
}

/// @nodoc
abstract mixin class $RecoveryKeyCopyWith<$Res> {
  factory $RecoveryKeyCopyWith(
          RecoveryKey value, $Res Function(RecoveryKey) _then) =
      _$RecoveryKeyCopyWithImpl;
  @useResult
  $Res call({List<int> entropy});
}

/// @nodoc
class _$RecoveryKeyCopyWithImpl<$Res> implements $RecoveryKeyCopyWith<$Res> {
  _$RecoveryKeyCopyWithImpl(this._self, this._then);

  final RecoveryKey _self;
  final $Res Function(RecoveryKey) _then;

  /// Create a copy of RecoveryKey
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entropy = null,
  }) {
    return _then(_self.copyWith(
      entropy: null == entropy
          ? _self.entropy
          : entropy // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _RecoveryKey extends RecoveryKey {
  const _RecoveryKey(final List<int> entropy)
      : _entropy = entropy,
        super._();

  final List<int> _entropy;
  @override
  List<int> get entropy {
    if (_entropy is EqualUnmodifiableListView) return _entropy;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_entropy);
  }

  /// Create a copy of RecoveryKey
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RecoveryKeyCopyWith<_RecoveryKey> get copyWith =>
      __$RecoveryKeyCopyWithImpl<_RecoveryKey>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RecoveryKey &&
            const DeepCollectionEquality().equals(other._entropy, _entropy));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_entropy));
}

/// @nodoc
abstract mixin class _$RecoveryKeyCopyWith<$Res>
    implements $RecoveryKeyCopyWith<$Res> {
  factory _$RecoveryKeyCopyWith(
          _RecoveryKey value, $Res Function(_RecoveryKey) _then) =
      __$RecoveryKeyCopyWithImpl;
  @override
  @useResult
  $Res call({List<int> entropy});
}

/// @nodoc
class __$RecoveryKeyCopyWithImpl<$Res> implements _$RecoveryKeyCopyWith<$Res> {
  __$RecoveryKeyCopyWithImpl(this._self, this._then);

  final _RecoveryKey _self;
  final $Res Function(_RecoveryKey) _then;

  /// Create a copy of RecoveryKey
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? entropy = null,
  }) {
    return _then(_RecoveryKey(
      null == entropy
          ? _self._entropy
          : entropy // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

// dart format on
