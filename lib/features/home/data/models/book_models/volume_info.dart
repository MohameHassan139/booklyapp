import 'package:booklyapp/features/home/data/models/book_models/panelization_summary.dart';

import 'image_links.dart';
import 'industry_identifier.dart';
import 'reading_modes.dart';

class VolumeInfo {
  String? title;
  String? subtitle;
  List<String>? authors;
  String? publisher;
  String? publishedDate;
  String? description;
  List<IndustryIdentifiers>? industryIdentifiers;
  ReadingModes? readingModes;
  int? pageCount;
  String? printType;
  List<String>? categories;
  String? maturityRating;
  bool? allowAnonLogging;
  String? contentVersion;
  PanelizationSummary? panelizationSummary;
  ImageLinks? imageLinks;
  String? language;
  String? previewLink;
  String? infoLink;
  String? canonicalVolumeLink;

  VolumeInfo(
      {this.title,
      this.subtitle,
      this.authors,
      this.publisher,
      this.publishedDate,
      this.description,
      this.industryIdentifiers,
      this.readingModes,
      this.pageCount,
      this.printType,
      this.categories,
      this.maturityRating,
      this.allowAnonLogging,
      this.contentVersion,
      this.panelizationSummary,
      this.imageLinks,
      this.language,
      this.previewLink,
      this.infoLink,
      this.canonicalVolumeLink});

  VolumeInfo.fromJson(Map<String, dynamic> json) {
    title = json["title"];
    subtitle = json["subtitle"];
    authors =
        json["authors"] == null ? null : List<String>.from(json["authors"]);
    publisher = json["publisher"];
    publishedDate = json["publishedDate"];
    description = json["description"];
    industryIdentifiers = json["industryIdentifiers"] == null
        ? null
        : (json["industryIdentifiers"] as List)
            .map((e) => IndustryIdentifiers.fromJson(e))
            .toList();
    readingModes = json["readingModes"] == null
        ? null
        : ReadingModes.fromJson(json["readingModes"]);
    pageCount = json["pageCount"];
    printType = json["printType"];
    categories = json["categories"] == null
        ? null
        : List<String>.from(json["categories"]);
    maturityRating = json["maturityRating"];
    allowAnonLogging = json["allowAnonLogging"];
    contentVersion = json["contentVersion"];
    panelizationSummary = json["panelizationSummary"] == null
        ? null
        : PanelizationSummary.fromJson(json["panelizationSummary"]);
    imageLinks = json["imageLinks"] == null
        ? null
        : ImageLinks.fromJson(json["imageLinks"]);
    language = json["language"];
    previewLink = json["previewLink"];
    infoLink = json["infoLink"];
    canonicalVolumeLink = json["canonicalVolumeLink"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["title"] = title;
    _data["subtitle"] = subtitle;
    if (authors != null) {
      _data["authors"] = authors;
    }
    _data["publisher"] = publisher;
    _data["publishedDate"] = publishedDate;
    _data["description"] = description;
    if (industryIdentifiers != null) {
      _data["industryIdentifiers"] =
          industryIdentifiers?.map((e) => e.toJson()).toList();
    }
    if (readingModes != null) {
      _data["readingModes"] = readingModes?.toJson();
    }
    _data["pageCount"] = pageCount;
    _data["printType"] = printType;
    if (categories != null) {
      _data["categories"] = categories;
    }
    _data["maturityRating"] = maturityRating;
    _data["allowAnonLogging"] = allowAnonLogging;
    _data["contentVersion"] = contentVersion;
    if (panelizationSummary != null) {
      _data["panelizationSummary"] = panelizationSummary?.toJson();
    }
    if (imageLinks != null) {
      _data["imageLinks"] = imageLinks?.toJson();
    }
    _data["language"] = language;
    _data["previewLink"] = previewLink;
    _data["infoLink"] = infoLink;
    _data["canonicalVolumeLink"] = canonicalVolumeLink;
    return _data;
  }
}
