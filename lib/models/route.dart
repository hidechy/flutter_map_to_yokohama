// ignore_for_file: avoid_dynamic_calls, inference_failure_on_untyped_parameter

/*
https://routes.googleapis.com/directions/v2:computeRoutes

<Request>

{
  'origin':{
    'location':{
      'latLng':{
        'latitude': 35.7102009,
        'longitude': 139.9490672
      }
    }
  },
  'destination':{
    'location':{
      'latLng':{
        'latitude': 35.466195,
        'longitude': 139.622704
      }
    }
  },
  'travelMode': 'DRIVE'  //  WALK
}

<Response>

{
    'routes': [
        {
            'distanceMeters': 51695,
            'duration': '3270s',
            'polyline': {
                'encodedPolyline': 'at}xE{xduYYz@iFqCfHeUbAmBp@aCxG~DtBfAxA`@hALbA?fAI`GkA\\ARLhAvAr@n@tEnCTPJJpBqDNs@D}@JwDL{@^oA`T{i@XYXInM_@bQw@b@KtAZEb@SxECrEDvBPrDXrCXpBn@fD`AlDrApD|@tB^dAvDpHhBpD~FdLzBpEnFbK`BdCt@pAdBjDlJtQpHrNhCjEFNnBpCl\\ba@ZXvBlCxDxEx@lA@LxBpCpEpFlBpCvCnD\\h@Th@`EjE~DzDrd@fb@vD~DnG~HjR~UvPbT~EnGhpAl`BpBvChApB|@rB~@xCh@rBd@nCb@jDT~DDjDEvCSfDW~Bm@fDeApEaAnDiBdHaJz\\cLzb@wAjFyMng@k@pCWjBYtCUdDKtEQnEw@j]OlEYtN]vME`D_@jOWjK?`AH`GnEbcAZ~GJzAr@zQx@dQXlCXhBxElTfElRdHt[N^nChLbAnD`@nA~BhG|GtOhSjd@vGfOrb@r`Ah@fAvFnMvEfKtAhCdGvIfJrMxv@pgAxBnCz@z@~AlAzAx@dBn@lBd@`BT|CLvSDxNAzIQdLBjCF~CJjF@pn@BrQ@h@A`@OfCObD]~HcBzDy@hBWjBGlBFtARnAZxAl@|A~@xBnBj`@za@j@b@dAd@xBb@jDj@hBPhBHJFzAIvAShBi@~As@vA_AtAmAjFgF`QcOjBoA^Sp@WbAWzAKvABhANzGrA~@V|@f@n@l@h@v@j@xAlHvU|DxKf@~@b@`@`@XlBj@`PnEfDrAt@^tGdC~A`@hCX|F\\lBVjAPtDlAxIbDlEzAhB^nAH~FM`DP|OQfDEpAHnATpAf@jX`O~A~@~GrDnAv@~AtAbAlArCjEzNpUxAzBtBhDnRpZnA~A|@|@nBbBzNxKv@z@j@z@`@x@d@zA|Lxg@f@tAt@pAnJlLv@zAxAbExAhEbAvB|Thb@v@nBxA~Er@`BlBfDjF~Ij@fApAfD`EvLrDnKhBdFZhAj@|CpCdRf@fC~@vDtT`z@tBnH|@pCl@pB@XnB|Gh@pAtAlCd@jAxHtWdAfEv@|DJfBAjBKvC@zANtAVbA^z@dBlCpExG`AhB`@pAn@nC~Gx]h@lBlApDbArCf@zBvBlLx@fDzB|H~@jCfDpHzAjC`CxDlBjC|BbCpC~BrBbB~FfGl@~@\\|@x@~Db@rAl@bAh@j@xKhJpEjEzA|Ar@z@jCnCv@bAhAjCr@zBrB~Ij@|ARb@|@rAh@l@d@`@nHrFn@^r@Xn@LlAFrRKdGB`AIpAWnAe@tAu@nA{@|BeBV]vDaDfAiAdBqBzDqD`@k@Li@Bm@My@i@yAwRvNq@f@gAd@oAXyALcC?ZxD@`A?j@W|CEt@Ix@gHCaIAcC@_@ZcCDaCCa@E'
            }
        }
    ]
}
*/

// To parse this JSON data, do
//
//     final route = routeFromJson(jsonString);

import 'dart:convert';

import 'package:test_to_yokohama/extensions/extensions.dart';

Route routeFromJson(String str) =>
    Route.fromJson(json.decode(str) as Map<String, dynamic>);

String routeToJson(Route data) => json.encode(data.toJson());

///
class Route {
  Route({
    required this.routes,
  });

  factory Route.fromJson(Map<String, dynamic> json) => Route(
        routes: List<RouteElement>.from(json['routes']
                .map((x) => RouteElement.fromJson(x as Map<String, dynamic>))
            as Iterable<dynamic>),
      );

  List<RouteElement> routes;

  Map<String, dynamic> toJson() => {
        'routes': List<dynamic>.from(routes.map((x) => x.toJson())),
      };
}

///
class RouteElement {
  RouteElement({
    required this.distanceMeters,
    required this.duration,
    required this.polyline,
  });

  factory RouteElement.fromJson(Map<String, dynamic> json) => RouteElement(
        distanceMeters: json['distanceMeters'].toString().toInt(),
        duration: json['duration'].toString(),
        polyline: Polyline.fromJson(json['polyline'] as Map<String, dynamic>),
      );

  int distanceMeters;
  String duration;
  Polyline polyline;

  Map<String, dynamic> toJson() => {
        'distanceMeters': distanceMeters,
        'duration': duration,
        'polyline': polyline.toJson(),
      };
}

///
class Polyline {
  Polyline({
    required this.encodedPolyline,
  });

  factory Polyline.fromJson(Map<String, dynamic> json) => Polyline(
        encodedPolyline: json['encodedPolyline'].toString(),
      );

  String encodedPolyline;

  Map<String, dynamic> toJson() => {
        'encodedPolyline': encodedPolyline,
      };
}
