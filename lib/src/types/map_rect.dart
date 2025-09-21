part of '../../yandex_mapkit.dart';

/// The rectangle to display on the map.
class MapRect {
  MapRect({
    required this.min,
    required this.max,
  });

  /// Minimum rectangle coordinates.
  final Offset min;

  /// Maximum rectangle coordinates.
  final Offset max;

  Map<String, dynamic> toJson() {
    return {
      'min': {
        'dx': min.dx,
        'dy': min.dy,
      },
      'max': {
        'dx': max.dx,
        'dy': max.dy,
      },
    };
  }
}
