// To parse this JSON data, do
//
//     final companyDetails = companyDetailsFromMap(jsonString);

import 'dart:convert';

class CompanyDetails {
  CompanyDetails({
    required this.description,
    required this.headquarters,
    required this.homepage,
    required this.id,
    required this.logoPath,
    required this.name,
    required this.originCountry,
    required this.parentCompany,
  });

  String description;
  String headquarters;
  String homepage;
  int id;
  String logoPath;
  String name;
  String originCountry;
  dynamic parentCompany;

  factory CompanyDetails.fromJson(String str) =>
      CompanyDetails.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CompanyDetails.fromMap(Map<String, dynamic> json) => CompanyDetails(
        description: json["description"],
        headquarters: json["headquarters"],
        homepage: json["homepage"],
        id: json["id"],
        logoPath: json["logo_path"],
        name: json["name"],
        originCountry: json["origin_country"],
        parentCompany: json["parent_company"],
      );

  Map<String, dynamic> toMap() => {
        "description": description,
        "headquarters": headquarters,
        "homepage": homepage,
        "id": id,
        "logo_path": logoPath,
        "name": name,
        "origin_country": originCountry,
        "parent_company": parentCompany,
      };
}
