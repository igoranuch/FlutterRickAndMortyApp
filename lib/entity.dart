import 'package:json_annotation/json_annotation.dart';

part 'entity.g.dart';

@JsonSerializable()
class EntityRm {
  final Info info;
  final List<Result> results;
  EntityRm({
    required this.info,
    required this.results,
  });
  factory EntityRm.fromJson(Map<String, dynamic> json) =>
      _$EntityRmFromJson(json);
  Map<String, dynamic> toJson() => _$EntityRmToJson(this);
}

@JsonSerializable()
class Info {
  final int count;
  final int pages;
  final String next;
  Info({
    required this.count,
    required this.pages,
    required this.next,
  });
  factory Info.fromJson(Map<String, dynamic> json) => _$InfoFromJson(json);
  Map<String, dynamic> toJson() => _$InfoToJson(this);
}

@JsonSerializable()
class Result {
  final int id;
  final String name;
  final String status;
  final String species;
  final String type;
  final String gender;
  final Origin origin;
  final Location location;
  final String image;
  final List<String> episode;
  final String url;
  final String created;
  Result({
    required this.id,
    required this.name,
    required this.status,
    required this.species,
    required this.type,
    required this.gender,
    required this.origin,
    required this.location,
    required this.image,
    required this.episode,
    required this.url,
    required this.created,
  });
  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
  Map<String, dynamic> toJson() => _$ResultToJson(this);
}

@JsonSerializable()
class Origin {
  final String name;
  final String url;
  Origin({
    required this.name,
    required this.url,
  });
  factory Origin.fromJson(Map<String, dynamic> json) => _$OriginFromJson(json);
  Map<String, dynamic> toJson() => _$OriginToJson(this);
}

@JsonSerializable()
class Location {
  final String name;
  final String url;
  Location({
    required this.name,
    required this.url,
  });
  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
  Map<String, dynamic> toJson() => _$LocationToJson(this);
}
