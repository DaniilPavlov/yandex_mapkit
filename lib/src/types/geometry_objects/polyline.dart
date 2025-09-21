part of '../../../yandex_mapkit.dart';

/// A polyline between a number of points.
/// A polyline is drawn between consecutive points.
class Polyline extends Equatable {
  factory Polyline._fromJson(Map<dynamic, dynamic> json) {
    // ignore: avoid_dynamic_calls
    return Polyline(points: json['points'].map<Point>((el) => Point._fromJson(el)).toList());
  }
  const Polyline({
    required this.points,
  });

  /// The list of points to connect.
  final List<Point> points;

  @override
  List<Object> get props => <Object>[
        points,
      ];

  @override
  bool get stringify => true;

  Map<String, dynamic> toJson() {
    return {
      'points': points.map((Point p) => p.toJson()).toList(),
    };
  }
}
