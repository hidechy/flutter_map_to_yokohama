// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'route_param_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RouteParamState {
  String get originLatitude => throw _privateConstructorUsedError;
  String get originLongitude => throw _privateConstructorUsedError;
  String get destinationLatitude => throw _privateConstructorUsedError;
  String get destinationLongitude => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RouteParamStateCopyWith<RouteParamState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RouteParamStateCopyWith<$Res> {
  factory $RouteParamStateCopyWith(
          RouteParamState value, $Res Function(RouteParamState) then) =
      _$RouteParamStateCopyWithImpl<$Res, RouteParamState>;
  @useResult
  $Res call(
      {String originLatitude,
      String originLongitude,
      String destinationLatitude,
      String destinationLongitude});
}

/// @nodoc
class _$RouteParamStateCopyWithImpl<$Res, $Val extends RouteParamState>
    implements $RouteParamStateCopyWith<$Res> {
  _$RouteParamStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? originLatitude = null,
    Object? originLongitude = null,
    Object? destinationLatitude = null,
    Object? destinationLongitude = null,
  }) {
    return _then(_value.copyWith(
      originLatitude: null == originLatitude
          ? _value.originLatitude
          : originLatitude // ignore: cast_nullable_to_non_nullable
              as String,
      originLongitude: null == originLongitude
          ? _value.originLongitude
          : originLongitude // ignore: cast_nullable_to_non_nullable
              as String,
      destinationLatitude: null == destinationLatitude
          ? _value.destinationLatitude
          : destinationLatitude // ignore: cast_nullable_to_non_nullable
              as String,
      destinationLongitude: null == destinationLongitude
          ? _value.destinationLongitude
          : destinationLongitude // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RouteParamStateCopyWith<$Res>
    implements $RouteParamStateCopyWith<$Res> {
  factory _$$_RouteParamStateCopyWith(
          _$_RouteParamState value, $Res Function(_$_RouteParamState) then) =
      __$$_RouteParamStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String originLatitude,
      String originLongitude,
      String destinationLatitude,
      String destinationLongitude});
}

/// @nodoc
class __$$_RouteParamStateCopyWithImpl<$Res>
    extends _$RouteParamStateCopyWithImpl<$Res, _$_RouteParamState>
    implements _$$_RouteParamStateCopyWith<$Res> {
  __$$_RouteParamStateCopyWithImpl(
      _$_RouteParamState _value, $Res Function(_$_RouteParamState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? originLatitude = null,
    Object? originLongitude = null,
    Object? destinationLatitude = null,
    Object? destinationLongitude = null,
  }) {
    return _then(_$_RouteParamState(
      originLatitude: null == originLatitude
          ? _value.originLatitude
          : originLatitude // ignore: cast_nullable_to_non_nullable
              as String,
      originLongitude: null == originLongitude
          ? _value.originLongitude
          : originLongitude // ignore: cast_nullable_to_non_nullable
              as String,
      destinationLatitude: null == destinationLatitude
          ? _value.destinationLatitude
          : destinationLatitude // ignore: cast_nullable_to_non_nullable
              as String,
      destinationLongitude: null == destinationLongitude
          ? _value.destinationLongitude
          : destinationLongitude // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RouteParamState implements _RouteParamState {
  const _$_RouteParamState(
      {this.originLatitude = '',
      this.originLongitude = '',
      this.destinationLatitude = '',
      this.destinationLongitude = ''});

  @override
  @JsonKey()
  final String originLatitude;
  @override
  @JsonKey()
  final String originLongitude;
  @override
  @JsonKey()
  final String destinationLatitude;
  @override
  @JsonKey()
  final String destinationLongitude;

  @override
  String toString() {
    return 'RouteParamState(originLatitude: $originLatitude, originLongitude: $originLongitude, destinationLatitude: $destinationLatitude, destinationLongitude: $destinationLongitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RouteParamState &&
            (identical(other.originLatitude, originLatitude) ||
                other.originLatitude == originLatitude) &&
            (identical(other.originLongitude, originLongitude) ||
                other.originLongitude == originLongitude) &&
            (identical(other.destinationLatitude, destinationLatitude) ||
                other.destinationLatitude == destinationLatitude) &&
            (identical(other.destinationLongitude, destinationLongitude) ||
                other.destinationLongitude == destinationLongitude));
  }

  @override
  int get hashCode => Object.hash(runtimeType, originLatitude, originLongitude,
      destinationLatitude, destinationLongitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RouteParamStateCopyWith<_$_RouteParamState> get copyWith =>
      __$$_RouteParamStateCopyWithImpl<_$_RouteParamState>(this, _$identity);
}

abstract class _RouteParamState implements RouteParamState {
  const factory _RouteParamState(
      {final String originLatitude,
      final String originLongitude,
      final String destinationLatitude,
      final String destinationLongitude}) = _$_RouteParamState;

  @override
  String get originLatitude;
  @override
  String get originLongitude;
  @override
  String get destinationLatitude;
  @override
  String get destinationLongitude;
  @override
  @JsonKey(ignore: true)
  _$$_RouteParamStateCopyWith<_$_RouteParamState> get copyWith =>
      throw _privateConstructorUsedError;
}
