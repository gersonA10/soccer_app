
import 'dart:convert';

LeaguesResponse leaguesResponseFromJson(String str) => LeaguesResponse.fromJson(json.decode(str));

String leaguesResponseToJson(LeaguesResponse data) => json.encode(data.toJson());

class LeaguesResponse {
    final List<League> data;
    final Meta meta;

    LeaguesResponse({
        required this.data,
        required this.meta,
    });

    factory LeaguesResponse.fromJson(Map<String, dynamic> json) => LeaguesResponse(
        data: List<League>.from(json["data"].map((x) => League.fromJson(x))),
        meta: Meta.fromJson(json["meta"]),
    );

    Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "meta": meta.toJson(),
    };
}

class League {
    final int id;
    final bool active;
    final String type;
    final int? legacyId;
    final int countryId;
    final String logoPath;
    final String name;
    final bool isCup;
    final bool isFriendly;
    final int currentSeasonId;
    final dynamic currentRoundId;
    final dynamic currentStageId;
    final bool liveStandings;
    final Coverage coverage;

    League({
        required this.id,
        required this.active,
        required this.type,
        required this.legacyId,
        required this.countryId,
        required this.logoPath,
        required this.name,
        required this.isCup,
        required this.isFriendly,
        required this.currentSeasonId,
        required this.currentRoundId,
        required this.currentStageId,
        required this.liveStandings,
        required this.coverage,
    });

    factory League.fromJson(Map<String, dynamic> json) => League(
        id: json["id"],
        active: json["active"],
        type: json["type"],
        legacyId: json["legacy_id"],
        countryId: json["country_id"],
        logoPath: json["logo_path"],
        name: json["name"],
        isCup: json["is_cup"],
        isFriendly: json["is_friendly"],
        currentSeasonId: json["current_season_id"],
        currentRoundId: json["current_round_id"],
        currentStageId: json["current_stage_id"],
        liveStandings: json["live_standings"],
        coverage: Coverage.fromJson(json["coverage"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "active": active,
        "type": type,
        "legacy_id": legacyId,
        "country_id": countryId,
        "logo_path": logoPath,
        "name": name,
        "is_cup": isCup,
        "is_friendly": isFriendly,
        "current_season_id": currentSeasonId,
        "current_round_id": currentRoundId,
        "current_stage_id": currentStageId,
        "live_standings": liveStandings,
        "coverage": coverage.toJson(),
    };
}

class Coverage {
    final bool predictions;
    final bool topscorerGoals;
    final bool topscorerAssists;
    final bool topscorerCards;

    Coverage({
        required this.predictions,
        required this.topscorerGoals,
        required this.topscorerAssists,
        required this.topscorerCards,
    });

    factory Coverage.fromJson(Map<String, dynamic> json) => Coverage(
        predictions: json["predictions"],
        topscorerGoals: json["topscorer_goals"],
        topscorerAssists: json["topscorer_assists"],
        topscorerCards: json["topscorer_cards"],
    );

    Map<String, dynamic> toJson() => {
        "predictions": predictions,
        "topscorer_goals": topscorerGoals,
        "topscorer_assists": topscorerAssists,
        "topscorer_cards": topscorerCards,
    };
}

class Meta {
    final List<Plan> plans;
    final List<Sport> sports;
    final Pagination pagination;

    Meta({
        required this.plans,
        required this.sports,
        required this.pagination,
    });

    factory Meta.fromJson(Map<String, dynamic> json) => Meta(
        plans: List<Plan>.from(json["plans"].map((x) => Plan.fromJson(x))),
        sports: List<Sport>.from(json["sports"].map((x) => Sport.fromJson(x))),
        pagination: Pagination.fromJson(json["pagination"]),
    );

    Map<String, dynamic> toJson() => {
        "plans": List<dynamic>.from(plans.map((x) => x.toJson())),
        "sports": List<dynamic>.from(sports.map((x) => x.toJson())),
        "pagination": pagination.toJson(),
    };
}

class Pagination {
    final int total;
    final int count;
    final int perPage;
    final int currentPage;
    final int totalPages;
    final Links links;

    Pagination({
        required this.total,
        required this.count,
        required this.perPage,
        required this.currentPage,
        required this.totalPages,
        required this.links,
    });

    factory Pagination.fromJson(Map<String, dynamic> json) => Pagination(
        total: json["total"],
        count: json["count"],
        perPage: json["per_page"],
        currentPage: json["current_page"],
        totalPages: json["total_pages"],
        links: Links.fromJson(json["links"]),
    );

    Map<String, dynamic> toJson() => {
        "total": total,
        "count": count,
        "per_page": perPage,
        "current_page": currentPage,
        "total_pages": totalPages,
        "links": links.toJson(),
    };
}

class Links {
    Links();

    factory Links.fromJson(Map<String, dynamic> json) => Links(
    );

    Map<String, dynamic> toJson() => {
    };
}

class Plan {
    final String name;
    final String features;
    final String priceMonthly;
    final String priceYearly;
    final String requestLimit;
    final String sport;

    Plan({
        required this.name,
        required this.features,
        required this.priceMonthly,
        required this.priceYearly,
        required this.requestLimit,
        required this.sport,
    });

    factory Plan.fromJson(Map<String, dynamic> json) => Plan(
        name: json["name"],
        features: json["features"],
        priceMonthly: json["price_monthly"],
        priceYearly: json["price_yearly"],
        requestLimit: json["request_limit"],
        sport: json["sport"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "features": features,
        "price_monthly": priceMonthly,
        "price_yearly": priceYearly,
        "request_limit": requestLimit,
        "sport": sport,
    };
}

class Sport {
    final int id;
    final String name;
    final bool current;

    Sport({
        required this.id,
        required this.name,
        required this.current,
    });

    factory Sport.fromJson(Map<String, dynamic> json) => Sport(
        id: json["id"],
        name: json["name"],
        current: json["current"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "current": current,
    };
}
