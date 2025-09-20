part of '../../../yandex_mapkit.dart';

final class DrivingAvoidanceFlags extends Equatable {
  /// The 'avoidTolls' option instructs the router to return routes that
  /// avoid tolls when possible.
  final bool avoidTolls;

  /// The 'avoidUnpaved' option instructs the router to return routes that
  /// avoid unpaved roads when possible.
  final bool avoidUnpaved;

  /// The 'avoidPoorCondition' option instructs the router to return routes
  /// that avoid roads in poor conditions when possible.
  final bool avoidPoorCondition;

  /// The 'avoidPoorConditions' option instructs the router to return
  /// routes that avoid railway crossings when possible.
  final bool avoidRailwayCrossing;

  /// The 'avoidBoatFerry' option instructs the router to return routes
  /// that avoid ferries when possible.
  final bool avoidBoatFerry;

  /// The 'avoidFordCrossing' option instructs the router to return routes
  /// that avoid ford crossings when possible.
  final bool avoidFordCrossing;

  /// The 'avoidTunnel' option instructs the router to return routes that
  /// avoid tunnels when possible.
  final bool avoidTunnel;

  /// The 'avoidHighway' option instructs the router to return routes that
  /// avoid highways when possible.
  final bool avoidHighway;

  const DrivingAvoidanceFlags({
    this.avoidTolls = false,
    this.avoidUnpaved = false,
    this.avoidPoorCondition = false,
    this.avoidRailwayCrossing = false,
    this.avoidBoatFerry = false,
    this.avoidFordCrossing = false,
    this.avoidTunnel = false,
    this.avoidHighway = false,
  });

  @override
  List<Object?> get props => <Object?>[
        avoidTolls,
        avoidUnpaved,
        avoidPoorCondition,
        avoidRailwayCrossing,
        avoidBoatFerry,
        avoidFordCrossing,
        avoidTunnel,
        avoidHighway,
      ];

  @override
  bool get stringify => true;
}
