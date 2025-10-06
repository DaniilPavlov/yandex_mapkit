part of '../../yandex_mapkit.dart';

/// Options to fine-tune pedestrian request.
class TimeOptions extends Equatable {
  const TimeOptions({this.departureTime, this.arrivalTime});

  /// Desired departure time in UTC for a time-dependent route request.
  /// This option cannot be used with [arrivalTime].
  final DateTime? departureTime;

  /// Desired arrival time in UTC for a time-dependent route request.
  /// This option cannot be used with [departureTime].
  final DateTime? arrivalTime;

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'departureTime': departureTime?.millisecondsSinceEpoch,
      'arrivalTime': arrivalTime?.millisecondsSinceEpoch,
    };
  }

  @override
  List<Object?> get props => <Object?>[departureTime, arrivalTime];

  @override
  bool get stringify => true;
}
