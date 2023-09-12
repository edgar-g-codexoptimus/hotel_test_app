// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'room_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RoomState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            RoomEntitiesList rooms, List<PageController> pageControllers)
        loaded,
    required TResult Function() loading,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            RoomEntitiesList rooms, List<PageController> pageControllers)?
        loaded,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            RoomEntitiesList rooms, List<PageController> pageControllers)?
        loaded,
    TResult Function()? loading,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RoomLoadedState value) loaded,
    required TResult Function(_RoomLoadingState value) loading,
    required TResult Function(_RoomErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RoomLoadedState value)? loaded,
    TResult? Function(_RoomLoadingState value)? loading,
    TResult? Function(_RoomErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RoomLoadedState value)? loaded,
    TResult Function(_RoomLoadingState value)? loading,
    TResult Function(_RoomErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomStateCopyWith<$Res> {
  factory $RoomStateCopyWith(RoomState value, $Res Function(RoomState) then) =
      _$RoomStateCopyWithImpl<$Res, RoomState>;
}

/// @nodoc
class _$RoomStateCopyWithImpl<$Res, $Val extends RoomState>
    implements $RoomStateCopyWith<$Res> {
  _$RoomStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_RoomLoadedStateCopyWith<$Res> {
  factory _$$_RoomLoadedStateCopyWith(
          _$_RoomLoadedState value, $Res Function(_$_RoomLoadedState) then) =
      __$$_RoomLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({RoomEntitiesList rooms, List<PageController> pageControllers});
}

/// @nodoc
class __$$_RoomLoadedStateCopyWithImpl<$Res>
    extends _$RoomStateCopyWithImpl<$Res, _$_RoomLoadedState>
    implements _$$_RoomLoadedStateCopyWith<$Res> {
  __$$_RoomLoadedStateCopyWithImpl(
      _$_RoomLoadedState _value, $Res Function(_$_RoomLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rooms = null,
    Object? pageControllers = null,
  }) {
    return _then(_$_RoomLoadedState(
      rooms: null == rooms
          ? _value.rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as RoomEntitiesList,
      pageControllers: null == pageControllers
          ? _value._pageControllers
          : pageControllers // ignore: cast_nullable_to_non_nullable
              as List<PageController>,
    ));
  }
}

/// @nodoc

class _$_RoomLoadedState implements _RoomLoadedState {
  const _$_RoomLoadedState(
      {required this.rooms,
      required final List<PageController> pageControllers})
      : _pageControllers = pageControllers;

  @override
  final RoomEntitiesList rooms;
  final List<PageController> _pageControllers;
  @override
  List<PageController> get pageControllers {
    if (_pageControllers is EqualUnmodifiableListView) return _pageControllers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pageControllers);
  }

  @override
  String toString() {
    return 'RoomState.loaded(rooms: $rooms, pageControllers: $pageControllers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RoomLoadedState &&
            (identical(other.rooms, rooms) || other.rooms == rooms) &&
            const DeepCollectionEquality()
                .equals(other._pageControllers, _pageControllers));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rooms,
      const DeepCollectionEquality().hash(_pageControllers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RoomLoadedStateCopyWith<_$_RoomLoadedState> get copyWith =>
      __$$_RoomLoadedStateCopyWithImpl<_$_RoomLoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            RoomEntitiesList rooms, List<PageController> pageControllers)
        loaded,
    required TResult Function() loading,
    required TResult Function(String message) error,
  }) {
    return loaded(rooms, pageControllers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            RoomEntitiesList rooms, List<PageController> pageControllers)?
        loaded,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(rooms, pageControllers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            RoomEntitiesList rooms, List<PageController> pageControllers)?
        loaded,
    TResult Function()? loading,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(rooms, pageControllers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RoomLoadedState value) loaded,
    required TResult Function(_RoomLoadingState value) loading,
    required TResult Function(_RoomErrorState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RoomLoadedState value)? loaded,
    TResult? Function(_RoomLoadingState value)? loading,
    TResult? Function(_RoomErrorState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RoomLoadedState value)? loaded,
    TResult Function(_RoomLoadingState value)? loading,
    TResult Function(_RoomErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _RoomLoadedState implements RoomState {
  const factory _RoomLoadedState(
          {required final RoomEntitiesList rooms,
          required final List<PageController> pageControllers}) =
      _$_RoomLoadedState;

  RoomEntitiesList get rooms;
  List<PageController> get pageControllers;
  @JsonKey(ignore: true)
  _$$_RoomLoadedStateCopyWith<_$_RoomLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RoomLoadingStateCopyWith<$Res> {
  factory _$$_RoomLoadingStateCopyWith(
          _$_RoomLoadingState value, $Res Function(_$_RoomLoadingState) then) =
      __$$_RoomLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RoomLoadingStateCopyWithImpl<$Res>
    extends _$RoomStateCopyWithImpl<$Res, _$_RoomLoadingState>
    implements _$$_RoomLoadingStateCopyWith<$Res> {
  __$$_RoomLoadingStateCopyWithImpl(
      _$_RoomLoadingState _value, $Res Function(_$_RoomLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_RoomLoadingState implements _RoomLoadingState {
  const _$_RoomLoadingState();

  @override
  String toString() {
    return 'RoomState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_RoomLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            RoomEntitiesList rooms, List<PageController> pageControllers)
        loaded,
    required TResult Function() loading,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            RoomEntitiesList rooms, List<PageController> pageControllers)?
        loaded,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            RoomEntitiesList rooms, List<PageController> pageControllers)?
        loaded,
    TResult Function()? loading,
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
    required TResult Function(_RoomLoadedState value) loaded,
    required TResult Function(_RoomLoadingState value) loading,
    required TResult Function(_RoomErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RoomLoadedState value)? loaded,
    TResult? Function(_RoomLoadingState value)? loading,
    TResult? Function(_RoomErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RoomLoadedState value)? loaded,
    TResult Function(_RoomLoadingState value)? loading,
    TResult Function(_RoomErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _RoomLoadingState implements RoomState {
  const factory _RoomLoadingState() = _$_RoomLoadingState;
}

/// @nodoc
abstract class _$$_RoomErrorStateCopyWith<$Res> {
  factory _$$_RoomErrorStateCopyWith(
          _$_RoomErrorState value, $Res Function(_$_RoomErrorState) then) =
      __$$_RoomErrorStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_RoomErrorStateCopyWithImpl<$Res>
    extends _$RoomStateCopyWithImpl<$Res, _$_RoomErrorState>
    implements _$$_RoomErrorStateCopyWith<$Res> {
  __$$_RoomErrorStateCopyWithImpl(
      _$_RoomErrorState _value, $Res Function(_$_RoomErrorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_RoomErrorState(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RoomErrorState implements _RoomErrorState {
  const _$_RoomErrorState({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'RoomState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RoomErrorState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RoomErrorStateCopyWith<_$_RoomErrorState> get copyWith =>
      __$$_RoomErrorStateCopyWithImpl<_$_RoomErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            RoomEntitiesList rooms, List<PageController> pageControllers)
        loaded,
    required TResult Function() loading,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            RoomEntitiesList rooms, List<PageController> pageControllers)?
        loaded,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            RoomEntitiesList rooms, List<PageController> pageControllers)?
        loaded,
    TResult Function()? loading,
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
    required TResult Function(_RoomLoadedState value) loaded,
    required TResult Function(_RoomLoadingState value) loading,
    required TResult Function(_RoomErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RoomLoadedState value)? loaded,
    TResult? Function(_RoomLoadingState value)? loading,
    TResult? Function(_RoomErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RoomLoadedState value)? loaded,
    TResult Function(_RoomLoadingState value)? loading,
    TResult Function(_RoomErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _RoomErrorState implements RoomState {
  const factory _RoomErrorState({required final String message}) =
      _$_RoomErrorState;

  String get message;
  @JsonKey(ignore: true)
  _$$_RoomErrorStateCopyWith<_$_RoomErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RoomEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(BuildContext context) navigateToReservation,
    required TResult Function(BuildContext context) navigateToHotel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(BuildContext context)? navigateToReservation,
    TResult? Function(BuildContext context)? navigateToHotel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(BuildContext context)? navigateToReservation,
    TResult Function(BuildContext context)? navigateToHotel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RoomLoadEvent value) load,
    required TResult Function(RoomNavigateToReservationEvent value)
        navigateToReservation,
    required TResult Function(RoomNavigateToHotelEvent value) navigateToHotel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RoomLoadEvent value)? load,
    TResult? Function(RoomNavigateToReservationEvent value)?
        navigateToReservation,
    TResult? Function(RoomNavigateToHotelEvent value)? navigateToHotel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RoomLoadEvent value)? load,
    TResult Function(RoomNavigateToReservationEvent value)?
        navigateToReservation,
    TResult Function(RoomNavigateToHotelEvent value)? navigateToHotel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomEventCopyWith<$Res> {
  factory $RoomEventCopyWith(RoomEvent value, $Res Function(RoomEvent) then) =
      _$RoomEventCopyWithImpl<$Res, RoomEvent>;
}

/// @nodoc
class _$RoomEventCopyWithImpl<$Res, $Val extends RoomEvent>
    implements $RoomEventCopyWith<$Res> {
  _$RoomEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RoomLoadEventCopyWith<$Res> {
  factory _$$RoomLoadEventCopyWith(
          _$RoomLoadEvent value, $Res Function(_$RoomLoadEvent) then) =
      __$$RoomLoadEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RoomLoadEventCopyWithImpl<$Res>
    extends _$RoomEventCopyWithImpl<$Res, _$RoomLoadEvent>
    implements _$$RoomLoadEventCopyWith<$Res> {
  __$$RoomLoadEventCopyWithImpl(
      _$RoomLoadEvent _value, $Res Function(_$RoomLoadEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RoomLoadEvent implements RoomLoadEvent {
  const _$RoomLoadEvent();

  @override
  String toString() {
    return 'RoomEvent.load()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RoomLoadEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(BuildContext context) navigateToReservation,
    required TResult Function(BuildContext context) navigateToHotel,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(BuildContext context)? navigateToReservation,
    TResult? Function(BuildContext context)? navigateToHotel,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(BuildContext context)? navigateToReservation,
    TResult Function(BuildContext context)? navigateToHotel,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RoomLoadEvent value) load,
    required TResult Function(RoomNavigateToReservationEvent value)
        navigateToReservation,
    required TResult Function(RoomNavigateToHotelEvent value) navigateToHotel,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RoomLoadEvent value)? load,
    TResult? Function(RoomNavigateToReservationEvent value)?
        navigateToReservation,
    TResult? Function(RoomNavigateToHotelEvent value)? navigateToHotel,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RoomLoadEvent value)? load,
    TResult Function(RoomNavigateToReservationEvent value)?
        navigateToReservation,
    TResult Function(RoomNavigateToHotelEvent value)? navigateToHotel,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class RoomLoadEvent implements RoomEvent {
  const factory RoomLoadEvent() = _$RoomLoadEvent;
}

/// @nodoc
abstract class _$$RoomNavigateToReservationEventCopyWith<$Res> {
  factory _$$RoomNavigateToReservationEventCopyWith(
          _$RoomNavigateToReservationEvent value,
          $Res Function(_$RoomNavigateToReservationEvent) then) =
      __$$RoomNavigateToReservationEventCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$RoomNavigateToReservationEventCopyWithImpl<$Res>
    extends _$RoomEventCopyWithImpl<$Res, _$RoomNavigateToReservationEvent>
    implements _$$RoomNavigateToReservationEventCopyWith<$Res> {
  __$$RoomNavigateToReservationEventCopyWithImpl(
      _$RoomNavigateToReservationEvent _value,
      $Res Function(_$RoomNavigateToReservationEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$RoomNavigateToReservationEvent(
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$RoomNavigateToReservationEvent
    implements RoomNavigateToReservationEvent {
  const _$RoomNavigateToReservationEvent(this.context);

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'RoomEvent.navigateToReservation(context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomNavigateToReservationEvent &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RoomNavigateToReservationEventCopyWith<_$RoomNavigateToReservationEvent>
      get copyWith => __$$RoomNavigateToReservationEventCopyWithImpl<
          _$RoomNavigateToReservationEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(BuildContext context) navigateToReservation,
    required TResult Function(BuildContext context) navigateToHotel,
  }) {
    return navigateToReservation(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(BuildContext context)? navigateToReservation,
    TResult? Function(BuildContext context)? navigateToHotel,
  }) {
    return navigateToReservation?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(BuildContext context)? navigateToReservation,
    TResult Function(BuildContext context)? navigateToHotel,
    required TResult orElse(),
  }) {
    if (navigateToReservation != null) {
      return navigateToReservation(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RoomLoadEvent value) load,
    required TResult Function(RoomNavigateToReservationEvent value)
        navigateToReservation,
    required TResult Function(RoomNavigateToHotelEvent value) navigateToHotel,
  }) {
    return navigateToReservation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RoomLoadEvent value)? load,
    TResult? Function(RoomNavigateToReservationEvent value)?
        navigateToReservation,
    TResult? Function(RoomNavigateToHotelEvent value)? navigateToHotel,
  }) {
    return navigateToReservation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RoomLoadEvent value)? load,
    TResult Function(RoomNavigateToReservationEvent value)?
        navigateToReservation,
    TResult Function(RoomNavigateToHotelEvent value)? navigateToHotel,
    required TResult orElse(),
  }) {
    if (navigateToReservation != null) {
      return navigateToReservation(this);
    }
    return orElse();
  }
}

abstract class RoomNavigateToReservationEvent implements RoomEvent {
  const factory RoomNavigateToReservationEvent(final BuildContext context) =
      _$RoomNavigateToReservationEvent;

  BuildContext get context;
  @JsonKey(ignore: true)
  _$$RoomNavigateToReservationEventCopyWith<_$RoomNavigateToReservationEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RoomNavigateToHotelEventCopyWith<$Res> {
  factory _$$RoomNavigateToHotelEventCopyWith(_$RoomNavigateToHotelEvent value,
          $Res Function(_$RoomNavigateToHotelEvent) then) =
      __$$RoomNavigateToHotelEventCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$RoomNavigateToHotelEventCopyWithImpl<$Res>
    extends _$RoomEventCopyWithImpl<$Res, _$RoomNavigateToHotelEvent>
    implements _$$RoomNavigateToHotelEventCopyWith<$Res> {
  __$$RoomNavigateToHotelEventCopyWithImpl(_$RoomNavigateToHotelEvent _value,
      $Res Function(_$RoomNavigateToHotelEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$RoomNavigateToHotelEvent(
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$RoomNavigateToHotelEvent implements RoomNavigateToHotelEvent {
  const _$RoomNavigateToHotelEvent(this.context);

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'RoomEvent.navigateToHotel(context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomNavigateToHotelEvent &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RoomNavigateToHotelEventCopyWith<_$RoomNavigateToHotelEvent>
      get copyWith =>
          __$$RoomNavigateToHotelEventCopyWithImpl<_$RoomNavigateToHotelEvent>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(BuildContext context) navigateToReservation,
    required TResult Function(BuildContext context) navigateToHotel,
  }) {
    return navigateToHotel(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(BuildContext context)? navigateToReservation,
    TResult? Function(BuildContext context)? navigateToHotel,
  }) {
    return navigateToHotel?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(BuildContext context)? navigateToReservation,
    TResult Function(BuildContext context)? navigateToHotel,
    required TResult orElse(),
  }) {
    if (navigateToHotel != null) {
      return navigateToHotel(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RoomLoadEvent value) load,
    required TResult Function(RoomNavigateToReservationEvent value)
        navigateToReservation,
    required TResult Function(RoomNavigateToHotelEvent value) navigateToHotel,
  }) {
    return navigateToHotel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RoomLoadEvent value)? load,
    TResult? Function(RoomNavigateToReservationEvent value)?
        navigateToReservation,
    TResult? Function(RoomNavigateToHotelEvent value)? navigateToHotel,
  }) {
    return navigateToHotel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RoomLoadEvent value)? load,
    TResult Function(RoomNavigateToReservationEvent value)?
        navigateToReservation,
    TResult Function(RoomNavigateToHotelEvent value)? navigateToHotel,
    required TResult orElse(),
  }) {
    if (navigateToHotel != null) {
      return navigateToHotel(this);
    }
    return orElse();
  }
}

abstract class RoomNavigateToHotelEvent implements RoomEvent {
  const factory RoomNavigateToHotelEvent(final BuildContext context) =
      _$RoomNavigateToHotelEvent;

  BuildContext get context;
  @JsonKey(ignore: true)
  _$$RoomNavigateToHotelEventCopyWith<_$RoomNavigateToHotelEvent>
      get copyWith => throw _privateConstructorUsedError;
}
