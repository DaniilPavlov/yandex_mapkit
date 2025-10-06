
import com.unact.yandexmapkit.lite.UtilsLite;
import com.yandex.mapkit.RequestPoint;
import com.yandex.mapkit.RequestPointType;
import com.yandex.mapkit.annotations.AnnotationLanguage;
import com.yandex.mapkit.directions.driving.AvoidanceFlags;
import com.yandex.mapkit.directions.driving.DrivingOptions;
import com.yandex.mapkit.geometry.Point;
import com.yandex.mapkit.search.SearchOptions;
import com.yandex.mapkit.search.SuggestOptions;
import com.yandex.mapkit.transport.masstransit.FitnessOptions;
import com.yandex.mapkit.transport.masstransit.TimeOptions;
import com.yandex.mapkit.transport.masstransit.RouteOptions;
import com.yandex.mapkit.transport.masstransit.FitnessOptions;
import com.yandex.mapkit.annotations.AnnotationLanguage;
import com.yandex.mapkit.directions.driving.AvoidanceFlags;

import java.util.Map;

public class UtilsFull extends UtilsLite {
  @SuppressWarnings({"unchecked", "ConstantConditions"})
  public static RequestPoint requestPointFromJson(Map<String, Object> json) {
    return new RequestPoint(
      pointFromJson((Map<String, Object>) json.get("point")),
      RequestPointType.values()[(Integer) json.get("requestPointType")],
      (String) json.get("pointContext"),
      (String) json.get("drivingArrivalPointId"),
      (String) json.get("indoorLevelId")
    );
  }
  public static TimeOptions timeOptionsFromJson(Map<String, Object> json) {
    return new TimeOptions(
      (Long) json.get("departureTime"),
      (Long) json.get("arrivalTime")
    );
  }

  @SuppressWarnings({"ConstantConditions"})
  public static FitnessOptions fitnessOptionsFromJson(Map<String, Object> json) {
    return new FitnessOptions(
      (Boolean) json.get("avoidSteep"),
      (Boolean) json.get("avoidStairs")
    );
  }

  @SuppressWarnings({"unchecked", "ConstantConditions"})
  public static DrivingOptions drivingOptionsFromJson(Map<String, Object> json) {
    AvoidanceFlags avoidanceFlags = json.get("avoidanceFlags") != null ?
      avoidanceFlagsFromJson((Map<String, Object>) json.get("avoidanceFlags")) :
      null;
    AnnotationLanguage annotationLanguage = json.get("annotationLanguage") != null ?
      AnnotationLanguage.values()[(Integer) json.get("annotationLanguage")] :
      null;

    return new DrivingOptions(
      (Double) json.get("initialAzimuth"),
      (Integer) json.get("routesCount"),
      (Long) json.get("departureTime"),
      annotationLanguage,
      avoidanceFlags
    );
  }

  @SuppressWarnings({"ConstantConditions"})
  public static AvoidanceFlags avoidanceFlagsFromJson(Map<String, Object> json) {
    return new AvoidanceFlags(
      (Boolean) json.get("avoidTolls"),
      (Boolean) json.get("avoidUnpaved"),
      (Boolean) json.get("avoidPoorCondition"),
      (Boolean) json.get("avoidRailwayCrossing"),
      (Boolean) json.get("avoidBoatFerry"),
      (Boolean) json.get("avoidFordCrossing"),
      (Boolean) json.get("avoidTunnel"),
      (Boolean) json.get("avoidHighway")
    );
  }

    public static RouteOptions routeOptionsFromJson(Map<String, Object> json) {
        return new RouteOptions(
                (FitnessOptions) json.get("fitnessOptions")
        );
    }

    public static DrivingOptions drivingOptionsFromJson(Map<String, Object> json) {
        Double initialAzimuth = json.get("initialAzimuth") != null ? (Double) json.get("initialAzimuth") : null;
        Integer routesCount = json.get("routesCount") != null ? (Integer) json.get("routesCount") : null;
        Long departureTime = json.get("departureTime") != null ? (Long) json.get("departureTime") : null;
        AnnotationLanguage annotationLanguage = json.get("annotationLanguage") != null ? (AnnotationLanguage) json.get("annotationLanguage") : null;
        AvoidanceFlags avoidanceFlags = json.get("avoidanceFlags") != null ? (AvoidanceFlags) json.get("avoidanceFlags") : null;
        return new DrivingOptions(
                initialAzimuth,
                routesCount,
                departureTime,
                annotationLanguage,
                avoidanceFlags
        );
    }

    @SuppressWarnings({"unchecked", "ConstantConditions"})
    public static SearchOptions searchOptionsFromJson(Map<String, Object> json) {
        Point userPosition = json.get("userPosition") != null
                ? pointFromJson((Map<String, Object>) json.get("userPosition"))
                : null;

    return new SuggestOptions(
      ((Number) json.get("suggestType")).intValue(),
      userPosition,
      ((Boolean) json.get("suggestWords")),
      ((Boolean) json.get("strictBounds"))
    );
  }
}

