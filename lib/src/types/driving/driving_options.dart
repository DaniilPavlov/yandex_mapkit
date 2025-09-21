part of '../../../yandex_mapkit.dart';

/// Options to fine-tune driving request.

class DrivingOptions extends Equatable {
  const DrivingOptions({
    this.initialAzimuth,
    this.routesCount,
    this.departureTime,
    this.annotationLanguage,
    this.avoidanceFlags,
  });

  /// Starting location azimuth.
  ///
  final double? initialAzimuth;

  /// The number of alternatives.
  ///
  final int? routesCount;
  final DateTime? departureTime;

  /// A method to set the annotation language. lang The annotation
  /// language.
  ///
  final AnnotationLanguage? annotationLanguage;

  /// The 'avoidanceFlags' instruct the router to return routes that avoid
  /// roads with the specified properties when possible.
  ///
  final DrivingAvoidanceFlags? avoidanceFlags;

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'initialAzimuth': initialAzimuth,
      'routesCount': routesCount,
      'departureTime': departureTime,
      'annotationLanguage': annotationLanguage,
      'avoidanceFlags': avoidanceFlags,
    };
  }

  @override
  List<Object?> get props => <Object?>[
        initialAzimuth,
        routesCount,
        departureTime,
        annotationLanguage,
        avoidanceFlags,
      ];

  @override
  bool get stringify => true;
}
