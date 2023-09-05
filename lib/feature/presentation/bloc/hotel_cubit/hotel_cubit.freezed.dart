// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hotel_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HotelState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(HotelEntity hotel) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(HotelEntity hotel)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(HotelEntity hotel)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HotelLoadingState value) loading,
    required TResult Function(_HotelLoadedState value) loaded,
    required TResult Function(_HotelErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HotelLoadingState value)? loading,
    TResult? Function(_HotelLoadedState value)? loaded,
    TResult? Function(_HotelErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HotelLoadingState value)? loading,
    TResult Function(_HotelLoadedState value)? loaded,
    TResult Function(_HotelErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotelStateCopyWith<$Res> {
  factory $HotelStateCopyWith(
          HotelState value, $Res Function(HotelState) then) =
      _$HotelStateCopyWithImpl<$Res, HotelState>;
}

/// @nodoc
class _$HotelStateCopyWithImpl<$Res, $Val extends HotelState>
    implements $HotelStateCopyWith<$Res> {
  _$HotelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_HotelLoadingStateCopyWith<$Res> {
  factory _$$_HotelLoadingStateCopyWith(_$_HotelLoadingState value,
          $Res Function(_$_HotelLoadingState) then) =
      __$$_HotelLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_HotelLoadingStateCopyWithImpl<$Res>
    extends _$HotelStateCopyWithImpl<$Res, _$_HotelLoadingState>
    implements _$$_HotelLoadingStateCopyWith<$Res> {
  __$$_HotelLoadingStateCopyWithImpl(
      _$_HotelLoadingState _value, $Res Function(_$_HotelLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_HotelLoadingState implements _HotelLoadingState {
  const _$_HotelLoadingState();

  @override
  String toString() {
    return 'HotelState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_HotelLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(HotelEntity hotel) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(HotelEntity hotel)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(HotelEntity hotel)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HotelLoadingState value) loading,
    required TResult Function(_HotelLoadedState value) loaded,
    required TResult Function(_HotelErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HotelLoadingState value)? loading,
    TResult? Function(_HotelLoadedState value)? loaded,
    TResult? Function(_HotelErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HotelLoadingState value)? loading,
    TResult Function(_HotelLoadedState value)? loaded,
    TResult Function(_HotelErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _HotelLoadingState implements HotelState {
  const factory _HotelLoadingState() = _$_HotelLoadingState;
}

/// @nodoc
abstract class _$$_HotelLoadedStateCopyWith<$Res> {
  factory _$$_HotelLoadedStateCopyWith(
          _$_HotelLoadedState value, $Res Function(_$_HotelLoadedState) then) =
      __$$_HotelLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({HotelEntity hotel});
}

/// @nodoc
class __$$_HotelLoadedStateCopyWithImpl<$Res>
    extends _$HotelStateCopyWithImpl<$Res, _$_HotelLoadedState>
    implements _$$_HotelLoadedStateCopyWith<$Res> {
  __$$_HotelLoadedStateCopyWithImpl(
      _$_HotelLoadedState _value, $Res Function(_$_HotelLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hotel = null,
  }) {
    return _then(_$_HotelLoadedState(
      null == hotel
          ? _value.hotel
          : hotel // ignore: cast_nullable_to_non_nullable
              as HotelEntity,
    ));
  }
}

/// @nodoc

class _$_HotelLoadedState implements _HotelLoadedState {
  const _$_HotelLoadedState(this.hotel);

  @override
  final HotelEntity hotel;

  @override
  String toString() {
    return 'HotelState.loaded(hotel: $hotel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HotelLoadedState &&
            (identical(other.hotel, hotel) || other.hotel == hotel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, hotel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HotelLoadedStateCopyWith<_$_HotelLoadedState> get copyWith =>
      __$$_HotelLoadedStateCopyWithImpl<_$_HotelLoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(HotelEntity hotel) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(hotel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(HotelEntity hotel)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(hotel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(HotelEntity hotel)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(hotel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HotelLoadingState value) loading,
    required TResult Function(_HotelLoadedState value) loaded,
    required TResult Function(_HotelErrorState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HotelLoadingState value)? loading,
    TResult? Function(_HotelLoadedState value)? loaded,
    TResult? Function(_HotelErrorState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HotelLoadingState value)? loading,
    TResult Function(_HotelLoadedState value)? loaded,
    TResult Function(_HotelErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _HotelLoadedState implements HotelState {
  const factory _HotelLoadedState(final HotelEntity hotel) =
      _$_HotelLoadedState;

  HotelEntity get hotel;
  @JsonKey(ignore: true)
  _$$_HotelLoadedStateCopyWith<_$_HotelLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_HotelErrorStateCopyWith<$Res> {
  factory _$$_HotelErrorStateCopyWith(
          _$_HotelErrorState value, $Res Function(_$_HotelErrorState) then) =
      __$$_HotelErrorStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_HotelErrorStateCopyWithImpl<$Res>
    extends _$HotelStateCopyWithImpl<$Res, _$_HotelErrorState>
    implements _$$_HotelErrorStateCopyWith<$Res> {
  __$$_HotelErrorStateCopyWithImpl(
      _$_HotelErrorState _value, $Res Function(_$_HotelErrorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_HotelErrorState(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_HotelErrorState implements _HotelErrorState {
  const _$_HotelErrorState(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'HotelState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HotelErrorState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HotelErrorStateCopyWith<_$_HotelErrorState> get copyWith =>
      __$$_HotelErrorStateCopyWithImpl<_$_HotelErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(HotelEntity hotel) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(HotelEntity hotel)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(HotelEntity hotel)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HotelLoadingState value) loading,
    required TResult Function(_HotelLoadedState value) loaded,
    required TResult Function(_HotelErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HotelLoadingState value)? loading,
    TResult? Function(_HotelLoadedState value)? loaded,
    TResult? Function(_HotelErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HotelLoadingState value)? loading,
    TResult Function(_HotelLoadedState value)? loaded,
    TResult Function(_HotelErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _HotelErrorState implements HotelState {
  const factory _HotelErrorState(final String message) = _$_HotelErrorState;

  String get message;
  @JsonKey(ignore: true)
  _$$_HotelErrorStateCopyWith<_$_HotelErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}
