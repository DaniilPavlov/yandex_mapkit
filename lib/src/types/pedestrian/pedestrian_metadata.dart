part of '../../../yandex_mapkit.dart';

/// Information about pedestrian route metadata.
class PedestrianMetadata extends Equatable {
  const PedestrianMetadata._(this.weight, this.estimation);

  factory PedestrianMetadata._fromJson(Map<dynamic, dynamic> json) {
    return PedestrianMetadata._(
      PedestrianWeight._fromJson(json['weight']),
      json['estimation'] != null ? PedestrianTravelEstimation._fromJson(json['estimation']) : null,
    );
  }

  /// Route "weight".
  final PedestrianWeight weight;

  /// Arrival and departure time estimations for time-dependent routes.
  final PedestrianTravelEstimation? estimation;

  @override
  List<Object?> get props => <Object?>[weight, estimation];

  @override
  bool get stringify => true;
}

/// Quantitative characteristics of any segment of the route.
class PedestrianWeight extends Equatable {
  const PedestrianWeight._(this.time, this.transfersCount, this.walkingDistance);

  factory PedestrianWeight._fromJson(Map<dynamic, dynamic> json) {
    return PedestrianWeight._(
      LocalizedValue._fromJson(json['time']),
      json['transfersCount'],
      LocalizedValue._fromJson(json['walkingDistance']),
    );
  }

  /// Time to travel.
  final LocalizedValue time;

  /// The number of transfers for a route or a route section.
  final int transfersCount;

  /// Distance to travel.
  final LocalizedValue walkingDistance;

  @override
  List<Object> get props => <Object>[
        time,
        transfersCount,
        walkingDistance,
      ];

  @override
  bool get stringify => true;
}
