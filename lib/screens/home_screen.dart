// ignore_for_file: must_be_immutable, inference_failure_on_untyped_parameter, avoid_dynamic_calls

import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../extensions/extensions.dart';
import '../state/route_transit/route_transit_notifier.dart';
import '../state/route_transit/route_transit_param_state.dart';
import '../state/route_transit/route_transit_result_state.dart';

// import '../state/polyline/polyline_notifier.dart';
// import '../state/polyline/polyline_param_state.dart';

class HomeScreen extends ConsumerWidget {
  HomeScreen({super.key});

  late CameraPosition basePoint;

  String funabashi = '35.7102009,139.9490672';

  String yokohama = '35.466195,139.622704';

  ///
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  Set<Polyline> polylineSet = {};

  late LatLngBounds bounds;

  List<double> latList = [];
  List<double> lngList = [];

  late WidgetRef _ref;

  ///
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        makeBoundsLine();
      },
    );

    _ref = ref;

    makePolyline();

    basePoint = CameraPosition(
      target: LatLng(
        funabashi.split(',')[0].toDouble(),
        funabashi.split(',')[1].toDouble(),
      ),
      zoom: 14,
    );

    return Column(
      children: [
        //------------------------------------//
        Expanded(
          child: GoogleMap(
            initialCameraPosition: basePoint,
            onMapCreated: _controller.complete,
            polylines: polylineSet,
          ),
        ),
        //------------------------------------//
      ],
    );
  }

  ///
  Future<void> makePolyline() async {
    // latList = [];
    // lngList = [];

    final routeTransitState = _ref.watch(
      routeTransitProvider(
        RouteTransitParamState(
          start: funabashi,
          goal: yokohama,
          startTime: '2023-04-10T12:00:00',
        ),
      ),
    );

    final poly = <LatLng>[];

    routeTransitState.list.forEach((element) {
      final origin = element as RouteTransitResultItemState;

      poly.add(
        LatLng(origin.latitude.toDouble(), origin.longitude.toDouble()),
      );

      latList.add(origin.latitude.toDouble());
      lngList.add(origin.longitude.toDouble());
    });

    polylineSet.add(
      Polyline(
        polylineId: const PolylineId('overview_polyline'),
        color: Colors.redAccent,
        width: 5,
        points: poly,
      ),
    );
  }

  ///
  Future<void> makeBoundsLine() async {
    if (latList.isNotEmpty && lngList.isNotEmpty) {
      final minSouthwestLat = latList.reduce(min);
      final maxNortheastLat = latList.reduce(max);

      final minSouthwestLng = lngList.reduce(min);
      final maxNortheastLng = lngList.reduce(max);

      bounds = LatLngBounds(
        southwest: LatLng(minSouthwestLat, minSouthwestLng),
        northeast: LatLng(maxNortheastLat, maxNortheastLng),
      );

      final controller = await _controller.future;

      await controller.animateCamera(
        CameraUpdate.newLatLngBounds(bounds, 50),
      );
    }
  }

/*

  ///
  Future<void> makePolyline() async {
    final polylineState = _ref.watch(polylineProvider(
      PolylineParamState(
        origin: funabashi,
        destination: yokohama,
      ),
    ));

    bounds = polylineState.bounds!;

    polylineSet.add(
      Polyline(
        polylineId: PolylineId('overview_polyline'),
        color: Colors.redAccent,
        width: 5,
        points: polylineState.polylinePoints
            .map((e) => LatLng(e.latitude, e.longitude))
            .toList(),
      ),
    );
  }

  ///
  Future<void> makeBoundsLine() async {
    final controller = await _controller.future;

    await controller.animateCamera(
      CameraUpdate.newLatLngBounds(bounds, 50),
    );
  }
  */
}
