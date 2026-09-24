// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboard_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OnboardEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is OnboardEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'OnboardEvent()';
  }
}

/// @nodoc
class $OnboardEventCopyWith<$Res> {
  $OnboardEventCopyWith(OnboardEvent _, $Res Function(OnboardEvent) __);
}

/// Adds pattern-matching-related methods to [OnboardEvent].
extension OnboardEventPatterns on OnboardEvent {
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
    TResult Function(_CheckOnboard value)? checkOnboard,
    TResult Function(_SetOnboard value)? setOnboard,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CheckOnboard() when checkOnboard != null:
        return checkOnboard(_that);
      case _SetOnboard() when setOnboard != null:
        return setOnboard(_that);
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
    required TResult Function(_CheckOnboard value) checkOnboard,
    required TResult Function(_SetOnboard value) setOnboard,
  }) {
    final _that = this;
    switch (_that) {
      case _CheckOnboard():
        return checkOnboard(_that);
      case _SetOnboard():
        return setOnboard(_that);
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
    TResult? Function(_CheckOnboard value)? checkOnboard,
    TResult? Function(_SetOnboard value)? setOnboard,
  }) {
    final _that = this;
    switch (_that) {
      case _CheckOnboard() when checkOnboard != null:
        return checkOnboard(_that);
      case _SetOnboard() when setOnboard != null:
        return setOnboard(_that);
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
    TResult Function()? checkOnboard,
    TResult Function()? setOnboard,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CheckOnboard() when checkOnboard != null:
        return checkOnboard();
      case _SetOnboard() when setOnboard != null:
        return setOnboard();
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
    required TResult Function() checkOnboard,
    required TResult Function() setOnboard,
  }) {
    final _that = this;
    switch (_that) {
      case _CheckOnboard():
        return checkOnboard();
      case _SetOnboard():
        return setOnboard();
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
    TResult? Function()? checkOnboard,
    TResult? Function()? setOnboard,
  }) {
    final _that = this;
    switch (_that) {
      case _CheckOnboard() when checkOnboard != null:
        return checkOnboard();
      case _SetOnboard() when setOnboard != null:
        return setOnboard();
      case _:
        return null;
    }
  }
}

/// @nodoc

class _CheckOnboard implements OnboardEvent {
  const _CheckOnboard();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _CheckOnboard);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'OnboardEvent.checkOnboard()';
  }
}

/// @nodoc

class _SetOnboard implements OnboardEvent {
  const _SetOnboard();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _SetOnboard);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'OnboardEvent.setOnboard()';
  }
}

/// @nodoc
mixin _$OnboardState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is OnboardState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'OnboardState()';
  }
}

/// @nodoc
class $OnboardStateCopyWith<$Res> {
  $OnboardStateCopyWith(OnboardState _, $Res Function(OnboardState) __);
}

/// Adds pattern-matching-related methods to [OnboardState].
extension OnboardStatePatterns on OnboardState {
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
    TResult Function(_Initial value)? initial,
    TResult Function(_OnboardNotShowed value)? onboardNotShowed,
    TResult Function(_OnboarShowed value)? onboarShowed,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial(_that);
      case _OnboardNotShowed() when onboardNotShowed != null:
        return onboardNotShowed(_that);
      case _OnboarShowed() when onboarShowed != null:
        return onboarShowed(_that);
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_OnboardNotShowed value) onboardNotShowed,
    required TResult Function(_OnboarShowed value) onboarShowed,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial(_that);
      case _OnboardNotShowed():
        return onboardNotShowed(_that);
      case _OnboarShowed():
        return onboarShowed(_that);
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
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OnboardNotShowed value)? onboardNotShowed,
    TResult? Function(_OnboarShowed value)? onboarShowed,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial(_that);
      case _OnboardNotShowed() when onboardNotShowed != null:
        return onboardNotShowed(_that);
      case _OnboarShowed() when onboarShowed != null:
        return onboarShowed(_that);
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
    TResult Function()? initial,
    TResult Function()? onboardNotShowed,
    TResult Function()? onboarShowed,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial();
      case _OnboardNotShowed() when onboardNotShowed != null:
        return onboardNotShowed();
      case _OnboarShowed() when onboarShowed != null:
        return onboarShowed();
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
    required TResult Function() initial,
    required TResult Function() onboardNotShowed,
    required TResult Function() onboarShowed,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial();
      case _OnboardNotShowed():
        return onboardNotShowed();
      case _OnboarShowed():
        return onboarShowed();
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
    TResult? Function()? initial,
    TResult? Function()? onboardNotShowed,
    TResult? Function()? onboarShowed,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial();
      case _OnboardNotShowed() when onboardNotShowed != null:
        return onboardNotShowed();
      case _OnboarShowed() when onboarShowed != null:
        return onboarShowed();
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Initial implements OnboardState {
  const _Initial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'OnboardState.initial()';
  }
}

/// @nodoc

class _OnboardNotShowed implements OnboardState {
  const _OnboardNotShowed();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _OnboardNotShowed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'OnboardState.onboardNotShowed()';
  }
}

/// @nodoc

class _OnboarShowed implements OnboardState {
  const _OnboarShowed();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _OnboarShowed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'OnboardState.onboarShowed()';
  }
}

// dart format on
