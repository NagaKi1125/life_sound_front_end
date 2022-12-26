// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'start_up_view_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StartUpViewState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkLoggedIn,
    required TResult Function(bool isLoggedIn) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkLoggedIn,
    TResult? Function(bool isLoggedIn)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkLoggedIn,
    TResult Function(bool isLoggedIn)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckLoggedIn value) checkLoggedIn,
    required TResult Function(_Success value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckLoggedIn value)? checkLoggedIn,
    TResult? Function(_Success value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckLoggedIn value)? checkLoggedIn,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StartUpViewStateCopyWith<$Res> {
  factory $StartUpViewStateCopyWith(
          StartUpViewState value, $Res Function(StartUpViewState) then) =
      _$StartUpViewStateCopyWithImpl<$Res, StartUpViewState>;
}

/// @nodoc
class _$StartUpViewStateCopyWithImpl<$Res, $Val extends StartUpViewState>
    implements $StartUpViewStateCopyWith<$Res> {
  _$StartUpViewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_CheckLoggedInCopyWith<$Res> {
  factory _$$_CheckLoggedInCopyWith(
          _$_CheckLoggedIn value, $Res Function(_$_CheckLoggedIn) then) =
      __$$_CheckLoggedInCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CheckLoggedInCopyWithImpl<$Res>
    extends _$StartUpViewStateCopyWithImpl<$Res, _$_CheckLoggedIn>
    implements _$$_CheckLoggedInCopyWith<$Res> {
  __$$_CheckLoggedInCopyWithImpl(
      _$_CheckLoggedIn _value, $Res Function(_$_CheckLoggedIn) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CheckLoggedIn implements _CheckLoggedIn {
  const _$_CheckLoggedIn();

  @override
  String toString() {
    return 'StartUpViewState.checkLoggedIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CheckLoggedIn);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkLoggedIn,
    required TResult Function(bool isLoggedIn) success,
  }) {
    return checkLoggedIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkLoggedIn,
    TResult? Function(bool isLoggedIn)? success,
  }) {
    return checkLoggedIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkLoggedIn,
    TResult Function(bool isLoggedIn)? success,
    required TResult orElse(),
  }) {
    if (checkLoggedIn != null) {
      return checkLoggedIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckLoggedIn value) checkLoggedIn,
    required TResult Function(_Success value) success,
  }) {
    return checkLoggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckLoggedIn value)? checkLoggedIn,
    TResult? Function(_Success value)? success,
  }) {
    return checkLoggedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckLoggedIn value)? checkLoggedIn,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (checkLoggedIn != null) {
      return checkLoggedIn(this);
    }
    return orElse();
  }
}

abstract class _CheckLoggedIn implements StartUpViewState {
  const factory _CheckLoggedIn() = _$_CheckLoggedIn;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<$Res> {
  factory _$$_SuccessCopyWith(
          _$_Success value, $Res Function(_$_Success) then) =
      __$$_SuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isLoggedIn});
}

/// @nodoc
class __$$_SuccessCopyWithImpl<$Res>
    extends _$StartUpViewStateCopyWithImpl<$Res, _$_Success>
    implements _$$_SuccessCopyWith<$Res> {
  __$$_SuccessCopyWithImpl(_$_Success _value, $Res Function(_$_Success) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoggedIn = null,
  }) {
    return _then(_$_Success(
      null == isLoggedIn
          ? _value.isLoggedIn
          : isLoggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success(this.isLoggedIn);

  @override
  final bool isLoggedIn;

  @override
  String toString() {
    return 'StartUpViewState.success(isLoggedIn: $isLoggedIn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Success &&
            (identical(other.isLoggedIn, isLoggedIn) ||
                other.isLoggedIn == isLoggedIn));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoggedIn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      __$$_SuccessCopyWithImpl<_$_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkLoggedIn,
    required TResult Function(bool isLoggedIn) success,
  }) {
    return success(isLoggedIn);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkLoggedIn,
    TResult? Function(bool isLoggedIn)? success,
  }) {
    return success?.call(isLoggedIn);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkLoggedIn,
    TResult Function(bool isLoggedIn)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(isLoggedIn);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckLoggedIn value) checkLoggedIn,
    required TResult Function(_Success value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckLoggedIn value)? checkLoggedIn,
    TResult? Function(_Success value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckLoggedIn value)? checkLoggedIn,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements StartUpViewState {
  const factory _Success(final bool isLoggedIn) = _$_Success;

  bool get isLoggedIn;
  @JsonKey(ignore: true)
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      throw _privateConstructorUsedError;
}
