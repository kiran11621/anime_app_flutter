// To parse this JSON data, do
//
//     final animeResponse = animeResponseFromJson(jsonString);

import 'package:hive/hive.dart';
import 'dart:convert';

part 'anime_response.g.dart';

AnimeResponse animeResponseFromJson(String str) =>
    AnimeResponse.fromJson(json.decode(str));

String animeResponseToJson(AnimeResponse data) => json.encode(data.toJson());

@HiveType(typeId: 1)
class AnimeResponse {
  @HiveField(1)
  Pagination? pagination;
  @HiveField(2)
  List<Datum>? data;

  AnimeResponse({
    this.pagination,
    this.data,
  });

  factory AnimeResponse.fromJson(Map<String, dynamic> json) => AnimeResponse(
        pagination: json["pagination"] == null
            ? null
            : Pagination.fromJson(json["pagination"]),
        data: json["data"] == null
            ? []
            : List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "pagination": pagination?.toJson(),
        "data": data == null
            ? []
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

@HiveType(typeId: 2)
class Datum {
  @HiveField(1)
  int? malId;
  @HiveField(2)
  String? url;
  @HiveField(3)
  Map<String, Image>? images;
  @HiveField(4)
  Trailer? trailer;
  @HiveField(5)
  bool? approved;
  @HiveField(6)
  List<Title>? titles;
  @HiveField(7)
  String? title;
  @HiveField(8)
  String? titleEnglish;
  @HiveField(9)
  String? titleJapanese;
  @HiveField(10)
  List<String>? titleSynonyms;
  @HiveField(11)
  DatumType? type;
  @HiveField(12)
  Source? source;
  @HiveField(13)
  int? episodes;
  @HiveField(14)
  Status? status;
  @HiveField(15)
  bool? airing;
  @HiveField(16)
  Aired? aired;
  @HiveField(17)
  String? duration;
  @HiveField(18)
  Rating? rating;
  @HiveField(19)
  double? score;
  @HiveField(20)
  int? scoredBy;
  @HiveField(21)
  int? rank;
  @HiveField(22)
  int? popularity;
  @HiveField(23)
  int? members;
  @HiveField(24)
  int? favorites;
  @HiveField(25)
  String? synopsis;
  @HiveField(26)
  String? background;
  @HiveField(27)
  Season? season;
  @HiveField(28)
  int? year;
  @HiveField(29)
  Broadcast? broadcast;
  @HiveField(30)
  List<Demographic>? producers;
  @HiveField(31)
  List<Demographic>? licensors;
  @HiveField(32)
  List<Demographic>? studios;
  @HiveField(33)
  List<Demographic>? genres;
  @HiveField(34)
  List<dynamic>? explicitGenres;
  @HiveField(35)
  List<Demographic>? themes;
  @HiveField(36)
  List<Demographic>? demographics;

  Datum({
    this.malId,
    this.url,
    this.images,
    this.trailer,
    this.approved,
    this.titles,
    this.title,
    this.titleEnglish,
    this.titleJapanese,
    this.titleSynonyms,
    this.type,
    this.source,
    this.episodes,
    this.status,
    this.airing,
    this.aired,
    this.duration,
    this.rating,
    this.score,
    this.scoredBy,
    this.rank,
    this.popularity,
    this.members,
    this.favorites,
    this.synopsis,
    this.background,
    this.season,
    this.year,
    this.broadcast,
    this.producers,
    this.licensors,
    this.studios,
    this.genres,
    this.explicitGenres,
    this.themes,
    this.demographics,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        malId: json["mal_id"],
        url: json["url"],
        images: Map.from(json["images"])
            .map((k, v) => MapEntry<String, Image>(k, Image.fromJson(v))),
        trailer:
            json["trailer"] == null ? null : Trailer.fromJson(json["trailer"]),
        approved: json["approved"],
        titles: json["titles"] == null
            ? []
            : List<Title>.from(json["titles"].map((x) => Title.fromJson(x))),
        title: json["title"],
        titleEnglish: json["title_english"],
        titleJapanese: json["title_japanese"],
        titleSynonyms: json["title_synonyms"] == null
            ? []
            : List<String>.from(json["title_synonyms"].map((x) => x)),
        type: datumTypeValues.map[json["type"]],
        source: sourceValues.map[json["source"]],
        episodes: json["episodes"],
        status: statusValues.map[json["status"]],
        airing: json["airing"],
        aired: json["aired"] == null ? null : Aired.fromJson(json["aired"]),
        duration: json["duration"],
        rating: ratingValues.map[json["rating"]],
        score: json["score"]?.toDouble(),
        scoredBy: json["scored_by"],
        rank: json["rank"],
        popularity: json["popularity"],
        members: json["members"],
        favorites: json["favorites"],
        synopsis: json["synopsis"],
        background: json["background"],
        season: seasonValues.map[json["season"]],
        year: json["year"],
        broadcast: json["broadcast"] == null
            ? null
            : Broadcast.fromJson(json["broadcast"]),
        producers: json["producers"] == null
            ? []
            : List<Demographic>.from(
                json["producers"].map((x) => Demographic.fromJson(x))),
        licensors: json["licensors"] == null
            ? []
            : List<Demographic>.from(
                json["licensors"].map((x) => Demographic.fromJson(x))),
        studios: json["studios"] == null
            ? []
            : List<Demographic>.from(
                json["studios"].map((x) => Demographic.fromJson(x))),
        genres: json["genres"] == null
            ? []
            : List<Demographic>.from(
                json["genres"].map((x) => Demographic.fromJson(x))),
        explicitGenres: json["explicit_genres"] == null
            ? []
            : List<dynamic>.from(json["explicit_genres"].map((x) => x)),
        themes: json["themes"] == null
            ? []
            : List<Demographic>.from(
                json["themes"].map((x) => Demographic.fromJson(x))),
        demographics: json["demographics"] == null
            ? []
            : List<Demographic>.from(
                json["demographics"].map((x) => Demographic.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "mal_id": malId,
        "url": url,
        "images": Map.from(images!)
            .map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
        "trailer": trailer?.toJson(),
        "approved": approved,
        "titles": titles == null
            ? []
            : List<dynamic>.from(titles!.map((x) => x.toJson())),
        "title": title,
        "title_english": titleEnglish,
        "title_japanese": titleJapanese,
        "title_synonyms": titleSynonyms == null
            ? []
            : List<dynamic>.from(titleSynonyms!.map((x) => x)),
        "type": datumTypeValues.reverse[type],
        "source": sourceValues.reverse[source],
        "episodes": episodes,
        "status": statusValues.reverse[status],
        "airing": airing,
        "aired": aired?.toJson(),
        "duration": duration,
        "rating": ratingValues.reverse[rating],
        "score": score,
        "scored_by": scoredBy,
        "rank": rank,
        "popularity": popularity,
        "members": members,
        "favorites": favorites,
        "synopsis": synopsis,
        "background": background,
        "season": seasonValues.reverse[season],
        "year": year,
        "broadcast": broadcast?.toJson(),
        "producers": producers == null
            ? []
            : List<dynamic>.from(producers!.map((x) => x.toJson())),
        "licensors": licensors == null
            ? []
            : List<dynamic>.from(licensors!.map((x) => x.toJson())),
        "studios": studios == null
            ? []
            : List<dynamic>.from(studios!.map((x) => x.toJson())),
        "genres": genres == null
            ? []
            : List<dynamic>.from(genres!.map((x) => x.toJson())),
        "explicit_genres": explicitGenres == null
            ? []
            : List<dynamic>.from(explicitGenres!.map((x) => x)),
        "themes": themes == null
            ? []
            : List<dynamic>.from(themes!.map((x) => x.toJson())),
        "demographics": demographics == null
            ? []
            : List<dynamic>.from(demographics!.map((x) => x.toJson())),
      };
}

@HiveType(typeId: 3)
class Aired {
  @HiveField(1)
  DateTime? from;
  @HiveField(2)
  DateTime? to;
  @HiveField(3)
  Prop? prop;
  @HiveField(4)
  String? string;

  Aired({
    this.from,
    this.to,
    this.prop,
    this.string,
  });

  factory Aired.fromJson(Map<String, dynamic> json) => Aired(
        from: json["from"] == null ? null : DateTime.parse(json["from"]),
        to: json["to"] == null ? null : DateTime.parse(json["to"]),
        prop: json["prop"] == null ? null : Prop.fromJson(json["prop"]),
        string: json["string"],
      );

  Map<String, dynamic> toJson() => {
        "from": from?.toIso8601String(),
        "to": to?.toIso8601String(),
        "prop": prop?.toJson(),
        "string": string,
      };
}

@HiveType(typeId: 4)
class Prop {
  @HiveField(1)
  From? from;
  @HiveField(2)
  From? to;

  Prop({
    this.from,
    this.to,
  });

  factory Prop.fromJson(Map<String, dynamic> json) => Prop(
        from: json["from"] == null ? null : From.fromJson(json["from"]),
        to: json["to"] == null ? null : From.fromJson(json["to"]),
      );

  Map<String, dynamic> toJson() => {
        "from": from?.toJson(),
        "to": to?.toJson(),
      };
}

@HiveType(typeId: 5)
class From {
  @HiveField(1)
  int? day;
  @HiveField(2)
  int? month;
  @HiveField(3)
  int? year;

  From({
    this.day,
    this.month,
    this.year,
  });

  factory From.fromJson(Map<String, dynamic> json) => From(
        day: json["day"],
        month: json["month"],
        year: json["year"],
      );

  Map<String, dynamic> toJson() => {
        "day": day,
        "month": month,
        "year": year,
      };
}

@HiveType(typeId: 6)
class Broadcast {
  @HiveField(1)
  String? day;
  @HiveField(2)
  String? time;
  @HiveField(3)
  Timezone? timezone;
  @HiveField(4)
  String? string;

  Broadcast({
    this.day,
    this.time,
    this.timezone,
    this.string,
  });

  factory Broadcast.fromJson(Map<String, dynamic> json) => Broadcast(
        day: json["day"],
        time: json["time"],
        timezone: timezoneValues.map[json["timezone"]],
        string: json["string"],
      );

  Map<String, dynamic> toJson() => {
        "day": day,
        "time": time,
        "timezone": timezoneValues.reverse[timezone],
        "string": string,
      };
}

enum Timezone { ASIA_TOKYO }

final timezoneValues = EnumValues({"Asia/Tokyo": Timezone.ASIA_TOKYO});

@HiveType(typeId: 7)
class Demographic {
  @HiveField(1)
  int? malId;
  @HiveField(2)
  DemographicType? type;
  @HiveField(3)
  String? name;
  @HiveField(4)
  String? url;

  Demographic({
    this.malId,
    this.type,
    this.name,
    this.url,
  });

  factory Demographic.fromJson(Map<String, dynamic> json) => Demographic(
        malId: json["mal_id"],
        type: demographicTypeValues.map[json["type"]],
        name: json["name"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "mal_id": malId,
        "type": demographicTypeValues.reverse[type],
        "name": name,
        "url": url,
      };
}

enum DemographicType { ANIME }

final demographicTypeValues = EnumValues({"anime": DemographicType.ANIME});

@HiveType(typeId: 8)
class Image {
  @HiveField(1)
  String? imageUrl;
  @HiveField(2)
  String? smallImageUrl;
  @HiveField(3)
  String? largeImageUrl;

  Image({
    this.imageUrl,
    this.smallImageUrl,
    this.largeImageUrl,
  });

  factory Image.fromJson(Map<String, dynamic> json) => Image(
        imageUrl: json["image_url"],
        smallImageUrl: json["small_image_url"],
        largeImageUrl: json["large_image_url"],
      );

  Map<String, dynamic> toJson() => {
        "image_url": imageUrl,
        "small_image_url": smallImageUrl,
        "large_image_url": largeImageUrl,
      };
}

enum Rating {
  PG_13_TEENS_13_OR_OLDER,
  PG_CHILDREN,
  R_17_VIOLENCE_PROFANITY,
  R_MILD_NUDITY
}

final ratingValues = EnumValues({
  "PG-13 - Teens 13 or older": Rating.PG_13_TEENS_13_OR_OLDER,
  "PG - Children": Rating.PG_CHILDREN,
  "R - 17+ (violence & profanity)": Rating.R_17_VIOLENCE_PROFANITY,
  "R+ - Mild Nudity": Rating.R_MILD_NUDITY
});

enum Season { FALL, SPRING, SUMMER }

final seasonValues = EnumValues(
    {"fall": Season.FALL, "spring": Season.SPRING, "summer": Season.SUMMER});

enum Source { LIGHT_NOVEL, MANGA, ORIGINAL }

final sourceValues = EnumValues({
  "Light novel": Source.LIGHT_NOVEL,
  "Manga": Source.MANGA,
  "Original": Source.ORIGINAL
});

enum Status { CURRENTLY_AIRING, FINISHED_AIRING }

final statusValues = EnumValues({
  "Currently Airing": Status.CURRENTLY_AIRING,
  "Finished Airing": Status.FINISHED_AIRING
});

@HiveType(typeId: 9)
class Title {
  @HiveField(1)
  TitleType? type;
  @HiveField(2)
  String? title;

  Title({
    this.type,
    this.title,
  });

  factory Title.fromJson(Map<String, dynamic> json) => Title(
        type: titleTypeValues.map[json["type"]],
        title: json["title"],
      );

  Map<String, dynamic> toJson() => {
        "type": titleTypeValues.reverse[type],
        "title": title,
      };
}

enum TitleType { DEFAULT, ENGLISH, FRENCH, GERMAN, JAPANESE, SPANISH, SYNONYM }

final titleTypeValues = EnumValues({
  "Default": TitleType.DEFAULT,
  "English": TitleType.ENGLISH,
  "French": TitleType.FRENCH,
  "German": TitleType.GERMAN,
  "Japanese": TitleType.JAPANESE,
  "Spanish": TitleType.SPANISH,
  "Synonym": TitleType.SYNONYM
});

@HiveType(typeId: 10)
class Trailer {
  @HiveField(1)
  String? youtubeId;
  @HiveField(2)
  String? url;
  @HiveField(3)
  String? embedUrl;
  @HiveField(4)
  Images? images;

  Trailer({
    this.youtubeId,
    this.url,
    this.embedUrl,
    this.images,
  });

  factory Trailer.fromJson(Map<String, dynamic> json) => Trailer(
        youtubeId: json["youtube_id"],
        url: json["url"],
        embedUrl: json["embed_url"],
        images: json["images"] == null ? null : Images.fromJson(json["images"]),
      );

  Map<String, dynamic> toJson() => {
        "youtube_id": youtubeId,
        "url": url,
        "embed_url": embedUrl,
        "images": images?.toJson(),
      };
}

@HiveType(typeId: 11)
class Images {
  @HiveField(1)
  String? imageUrl;
  @HiveField(2)
  String? smallImageUrl;
  @HiveField(3)
  String? mediumImageUrl;
  @HiveField(4)
  String? largeImageUrl;
  @HiveField(5)
  String? maximumImageUrl;

  Images({
    this.imageUrl,
    this.smallImageUrl,
    this.mediumImageUrl,
    this.largeImageUrl,
    this.maximumImageUrl,
  });

  factory Images.fromJson(Map<String, dynamic> json) => Images(
        imageUrl: json["image_url"],
        smallImageUrl: json["small_image_url"],
        mediumImageUrl: json["medium_image_url"],
        largeImageUrl: json["large_image_url"],
        maximumImageUrl: json["maximum_image_url"],
      );

  Map<String, dynamic> toJson() => {
        "image_url": imageUrl,
        "small_image_url": smallImageUrl,
        "medium_image_url": mediumImageUrl,
        "large_image_url": largeImageUrl,
        "maximum_image_url": maximumImageUrl,
      };
}

enum DatumType { MOVIE, TV }

final datumTypeValues =
    EnumValues({"Movie": DatumType.MOVIE, "TV": DatumType.TV});

@HiveType(typeId: 12)
class Pagination {
  @HiveField(1)
  int? lastVisiblePage;
  @HiveField(2)
  bool? hasNextPage;
  @HiveField(3)
  int? currentPage;
  @HiveField(4)
  Items? items;

  Pagination({
    this.lastVisiblePage,
    this.hasNextPage,
    this.currentPage,
    this.items,
  });

  factory Pagination.fromJson(Map<String, dynamic> json) => Pagination(
        lastVisiblePage: json["last_visible_page"],
        hasNextPage: json["has_next_page"],
        currentPage: json["current_page"],
        items: json["items"] == null ? null : Items.fromJson(json["items"]),
      );

  Map<String, dynamic> toJson() => {
        "last_visible_page": lastVisiblePage,
        "has_next_page": hasNextPage,
        "current_page": currentPage,
        "items": items?.toJson(),
      };
}

@HiveType(typeId: 13)
class Items {
  @HiveField(1)
  int? count;
  @HiveField(2)
  int? total;
  @HiveField(3)
  int? perPage;

  Items({
    this.count,
    this.total,
    this.perPage,
  });

  factory Items.fromJson(Map<String, dynamic> json) => Items(
        count: json["count"],
        total: json["total"],
        perPage: json["per_page"],
      );

  Map<String, dynamic> toJson() => {
        "count": count,
        "total": total,
        "per_page": perPage,
      };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
