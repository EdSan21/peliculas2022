// To parse this JSON data, do
//
//     final credits = creditsFromMap(jsonString);

import 'dart:convert';

class Credits {
  Credits({
    required this.id,
    required this.cast,
    required this.crew,
  });

  int id;
  List<dynamic> cast;
  List<Crew> crew;

  factory Credits.fromJson(String str) => Credits.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Credits.fromMap(Map<String, dynamic> json) => Credits(
        id: json["id"],
        cast: List<dynamic>.from(json["cast"].map((x) => x)),
        crew: List<Crew>.from(json["crew"].map((x) => Crew.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "cast": List<dynamic>.from(cast.map((x) => x)),
        "crew": List<dynamic>.from(crew.map((x) => x.toMap())),
      };
}

class Crew {
  Crew({
    required this.adult,
    required this.gender,
    required this.id,
    required this.knownForDepartment,
    required this.name,
    required this.originalName,
    required this.popularity,
    required this.profilePath,
    required this.creditId,
    required this.department,
    required this.job,
  });

  bool adult;
  int gender;
  int id;
  String knownForDepartment;
  String name;
  String originalName;
  double popularity;
  dynamic profilePath;
  String creditId;
  String department;
  String job;

  factory Crew.fromJson(String str) => Crew.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Crew.fromMap(Map<String, dynamic> json) => Crew(
        adult: json["adult"],
        gender: json["gender"],
        id: json["id"],
        knownForDepartment: json["known_for_department"],
        name: json["name"],
        originalName: json["original_name"],
        popularity: json["popularity"].toDouble(),
        profilePath: json["profile_path"],
        creditId: json["credit_id"],
        department: json["department"],
        job: json["job"],
      );

  Map<String, dynamic> toMap() => {
        "adult": adult,
        "gender": gender,
        "id": id,
        "known_for_department": knownForDepartment,
        "name": name,
        "original_name": originalName,
        "popularity": popularity,
        "profile_path": profilePath,
        "credit_id": creditId,
        "department": department,
        "job": job,
      };
}
