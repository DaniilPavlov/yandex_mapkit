part of '../../../yandex_mapkit.dart';

/// Information about driving route metadata.
class DrivingSectionMetadata extends Equatable {
  const DrivingSectionMetadata._(this.weight);

  factory DrivingSectionMetadata._fromJson(Map<dynamic, dynamic> json) {
    return DrivingSectionMetadata._(DrivingWeight._fromJson(json['weight']));
  }

  /// Route "weight".
  final DrivingWeight weight;

  @override
  List<Object> get props => <Object>[
        weight,
      ];

  @override
  bool get stringify => true;
}

/// Quantitative characteristics of any segment of the route.
class DrivingWeight extends Equatable {
  const DrivingWeight._(this.time, this.timeWithTraffic, this.distance);

  factory DrivingWeight._fromJson(Map<dynamic, dynamic> json) {
    return DrivingWeight._(
      LocalizedValue._fromJson(json['time']),
      LocalizedValue._fromJson(json['timeWithTraffic']),
      LocalizedValue._fromJson(json['distance']),
    );
  }

  /// Time to travel, not considering traffic.
  final LocalizedValue time;

  /// Time to travel, considering traffic.
  final LocalizedValue timeWithTraffic;

  /// Distance to travel.
  final LocalizedValue distance;

  @override
  List<Object> get props => <Object>[
        time,
        timeWithTraffic,
        distance,
      ];

  @override
  bool get stringify => true;
}
