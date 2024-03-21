// import 'package:equatable/equatable.dart';

// import 'access_info.dart';
// import 'sale_info.dart';
// import 'volume_info.dart';

// class Item extends Equatable {
//   final String? kind;
//   final String? id;
//   final String? etag;
//   final String? selfLink;
//   final VolumeInfo? volumeInfo;
//   final SaleInfo? saleInfo;
//   final AccessInfo? accessInfo;

//   const Item({
//     this.kind,
//     this.id,
//     this.etag,
//     this.selfLink,
//     this.volumeInfo,
//     this.saleInfo,
//     this.accessInfo,
//   });

//   factory Item.fromJson(Map<String, dynamic> json) => Item(
//         kind: json['kind'] as String?,
//         id: json['id'] as String?,
//         etag: json['etag'] as String?,
//         selfLink: json['selfLink'] as String?,
//         volumeInfo: json['volumeInfo'] == null
//             ? null
//             : VolumeInfo.fromJson(json['volumeInfo'] as Map<String, dynamic>),
//         saleInfo: json['saleInfo'] == null
//             ? null
//             : SaleInfo.fromJson(json['saleInfo'] as Map<String, dynamic>),
//         accessInfo: json['accessInfo'] == null
//             ? null
//             : AccessInfo.fromJson(json['accessInfo'] as Map<String, dynamic>),
//       );

//   Map<String, dynamic> toJson() => {
//         'kind': kind,
//         'id': id,
//         'etag': etag,
//         'selfLink': selfLink,
//         'volumeInfo': volumeInfo?.toJson(),
//         'saleInfo': saleInfo?.toJson(),
//         'accessInfo': accessInfo?.toJson(),
//       };

//   @override
//   List<Object?> get props {
//     return [
//       kind,
//       id,
//       etag,
//       selfLink,
//       volumeInfo,
//       saleInfo,
//       accessInfo,
//     ];
//   }
// }

import 'package:booklyapp/features/home/data/models/book_models/book_models.dart';

import 'access_info.dart';
import 'sale_info.dart';
import 'volume_info.dart';

class Item {
  String? kind;
  String? id;
  String? etag;
  String? selfLink;
  VolumeInfo? volumeInfo;
  SaleInfo? saleInfo;
  AccessInfo? accessInfo;

  Item(
      {this.kind,
      this.id,
      this.etag,
      this.selfLink,
      this.volumeInfo,
      this.saleInfo,
      this.accessInfo});

  Item.fromJson(Map<String, dynamic> json) {
    kind = json["kind"];
    id = json["id"];
    etag = json["etag"];
    selfLink = json["selfLink"];
    volumeInfo = json["volumeInfo"] == null
        ? null
        : VolumeInfo.fromJson(json["volumeInfo"]);
    saleInfo =
        json["saleInfo"] == null ? null : SaleInfo.fromJson(json["saleInfo"]);
    accessInfo = json["accessInfo"] == null
        ? null
        : AccessInfo.fromJson(json["accessInfo"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["kind"] = kind;
    _data["id"] = id;
    _data["etag"] = etag;
    _data["selfLink"] = selfLink;
    if (volumeInfo != null) {
      _data["volumeInfo"] = volumeInfo?.toJson();
    }
    if (saleInfo != null) {
      _data["saleInfo"] = saleInfo?.toJson();
    }
    if (accessInfo != null) {
      _data["accessInfo"] = accessInfo?.toJson();
    }
    return _data;
  }
}
