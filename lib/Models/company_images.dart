// To parse this JSON data, do
//
//     final companyDetailsImages = companyDetailsImagesFromMap(jsonString);

import 'dart:convert';

class CompanyDetailsImages {
  CompanyDetailsImages({
    required this.id,
    required this.logos,
  });

  int id;
  List<Logo> logos;

  factory CompanyDetailsImages.fromJson(String str) =>
      CompanyDetailsImages.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CompanyDetailsImages.fromMap(Map<String, dynamic> json) =>
      CompanyDetailsImages(
        id: json["id"],
        logos: List<Logo>.from(json["logos"].map((x) => Logo.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "logos": List<dynamic>.from(logos.map((x) => x.toMap())),
      };
}

class Logo {
  Logo({
    required this.aspectRatio,
    required this.filePath,
    required this.height,
    required this.id,
    required this.fileType,
    required this.voteAverage,
    required this.voteCount,
    required this.width,
  });

  int aspectRatio;
  String filePath;
  int height;
  String id;
  String fileType;
  double voteAverage;
  int voteCount;
  int width;

  factory Logo.fromJson(String str) => Logo.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Logo.fromMap(Map<String, dynamic> json) => Logo(
        aspectRatio: json["aspect_ratio"],
        filePath: json["file_path"],
        height: json["height"],
        id: json["id"],
        fileType: json["file_type"],
        voteAverage: json["vote_average"].toDouble(),
        voteCount: json["vote_count"],
        width: json["width"],
      );

  Map<String, dynamic> toMap() => {
        "aspect_ratio": aspectRatio,
        "file_path": filePath,
        "height": height,
        "id": id,
        "file_type": fileType,
        "vote_average": voteAverage,
        "vote_count": voteCount,
        "width": width,
      };
}
