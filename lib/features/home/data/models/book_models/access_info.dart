import 'epub.dart';
import 'pdf.dart';

class AccessInfo {
  String? country;
  String? viewability;
  bool? embeddable;
  bool? publicDomain;
  String? textToSpeechPermission;
  Epub? epub;
  Pdf? pdf;
  String? webReaderLink;
  String? accessViewStatus;
  bool? quoteSharingAllowed;

  AccessInfo(
      {this.country,
      this.viewability,
      this.embeddable,
      this.publicDomain,
      this.textToSpeechPermission,
      this.epub,
      this.pdf,
      this.webReaderLink,
      this.accessViewStatus,
      this.quoteSharingAllowed});

  AccessInfo.fromJson(Map<String, dynamic> json) {
    country = json["country"];
    viewability = json["viewability"];
    embeddable = json["embeddable"];
    publicDomain = json["publicDomain"];
    textToSpeechPermission = json["textToSpeechPermission"];
    epub = json["epub"] == null ? null : Epub.fromJson(json["epub"]);
    pdf = json["pdf"] == null ? null : Pdf.fromJson(json["pdf"]);
    webReaderLink = json["webReaderLink"];
    accessViewStatus = json["accessViewStatus"];
    quoteSharingAllowed = json["quoteSharingAllowed"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["country"] = country;
    _data["viewability"] = viewability;
    _data["embeddable"] = embeddable;
    _data["publicDomain"] = publicDomain;
    _data["textToSpeechPermission"] = textToSpeechPermission;
    if (epub != null) {
      _data["epub"] = epub?.toJson();
    }
    if (pdf != null) {
      _data["pdf"] = pdf?.toJson();
    }
    _data["webReaderLink"] = webReaderLink;
    _data["accessViewStatus"] = accessViewStatus;
    _data["quoteSharingAllowed"] = quoteSharingAllowed;
    return _data;
  }
}
