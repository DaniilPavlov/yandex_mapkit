part of '../../yandex_mapkit.dart';

/// The level of traffic.
class TrafficLevel extends Equatable {
  factory TrafficLevel._fromJson(Map<dynamic, dynamic> json) {
    return TrafficLevel._(
      color: TrafficColor.values[json['color']],
      level: json['level'],
    );
  }
  const TrafficLevel._({
    required this.color,
    required this.level,
  });

  /// The color that represents traffic.
  final TrafficColor color;

  /// Traffic level.
  final int level;

  @override
  List<Object> get props => <Object>[
        color,
        level,
      ];

  @override
  bool get stringify => true;
}

/// The color that is used for traffic.
enum TrafficColor { red, yellow, green }
