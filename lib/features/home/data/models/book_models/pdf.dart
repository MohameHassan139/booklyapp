class Pdf {
  bool? isAvailable;
  String? acsTokenLink;

  Pdf({this.isAvailable, this.acsTokenLink});

  Pdf.fromJson(Map<String, dynamic> json) {
    isAvailable = json["isAvailable"];
    acsTokenLink = json["acsTokenLink"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["isAvailable"] = isAvailable;
    _data["acsTokenLink"] = acsTokenLink;
    return _data;
  }
}
