package com.unact.yandexmapkit.full;

import com.unact.yandexmapkit.lite.UtilsLite;
import com.yandex.mapkit.directions.driving.DrivingOptions;
import com.yandex.mapkit.geometry.Point;
import com.yandex.mapkit.search.SearchOptions;
import com.yandex.mapkit.search.SuggestOptions;
import com.yandex.mapkit.transport.masstransit.TimeOptions;
import com.yandex.mapkit.transport.masstransit.RouteOptions;
import com.yandex.mapkit.transport.masstransit.FitnessOptions;
import com.yandex.mapkit.annotations.AnnotationLanguage;
import com.yandex.mapkit.directions.driving.AvoidanceFlags;

import java.util.Map;

public class UtilsFull extends UtilsLite {

    public static TimeOptions timeOptionsFromJson(Map<String, Object> json) {
        return new TimeOptions(
                (Long) json.get("departureTime"),
                (Long) json.get("arrivalTime")
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

        return new SearchOptions(
                ((Number) json.get("searchType")).intValue(),
                (Integer) json.get("resultPageSize"),
                0,
                userPosition,
                (String) json.get("origin"),
                (Boolean) json.get("geometry"),
                (Boolean) json.get("disableSpellingCorrection"),
                null
        );
    }

    @SuppressWarnings({"unchecked", "ConstantConditions"})
    public static SuggestOptions suggestOptionsFromJson(Map<String, Object> json) {
        Point userPosition = json.get("userPosition") != null
                ? pointFromJson((Map<String, Object>) json.get("userPosition"))
                : null;

        Boolean suggestWords = (Boolean) json.get("suggestWords");
        if (suggestWords == null) {
            suggestWords = false;
        }

        return new SuggestOptions(
                ((Number) json.get("suggestType")).intValue(),
                userPosition,
                suggestWords,
                false
        );
    }
}

