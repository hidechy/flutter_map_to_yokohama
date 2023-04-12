import 'package:freezed_annotation/freezed_annotation.dart';

part 'route_param_state.freezed.dart';

@freezed
class RouteParamState with _$RouteParamState {
  const factory RouteParamState({
    @Default('') String originLatitude,
    @Default('') String originLongitude,
    @Default('') String destinationLatitude,
    @Default('') String destinationLongitude,
  }) = _RouteParamState;
}
