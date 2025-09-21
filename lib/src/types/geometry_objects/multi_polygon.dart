part of '../../../yandex_mapkit.dart';

/// An area consisting of multiple external polygons
class MultiPolygon extends Equatable {
  factory MultiPolygon._fromJson(Map<dynamic, dynamic> json) {
    // ignore: avoid_dynamic_calls
    return MultiPolygon(polygons: json['polygons'].map<Polygon>((el) => Polygon._fromJson(el)).toList());
  }
  const MultiPolygon({required this.polygons});

  /// The list of polygons.
  final List<Polygon> polygons;

  @override
  List<Object> get props => <Object>[polygons];

  @override
  bool get stringify => true;

  Map<String, dynamic> toJson() {
    return {'polygons': polygons.map((Polygon p) => p.toJson()).toList()};
  }
}
