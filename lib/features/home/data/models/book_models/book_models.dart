// import 'package:equatable/equatable.dart';

// import 'item.dart';

// class BookModels extends Equatable {
//   final String? kind;
//   final int? totalItems;
//   final List<Item>? items;

//   const BookModels({this.kind, this.totalItems, this.items});

//   factory BookModels.fromJson(Map<String, dynamic> json) {
//     return BookModels(
//       kind: json["kind"]?.toString(),
//       totalItems: json['totalItems'] as int?,
//       items: (json['items'] as List<dynamic>?)
//           ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
//           .toList(),
//     );
//   }

//   @override
//   List<Object?> get props => [kind, totalItems, items];
// }

import 'package:booklyapp/features/home/data/models/book_models/item.dart';

class BookModels {
  String? kind;
  int? totalItems;
  List<Item>? items;

  BookModels({this.kind, this.totalItems, this.items});

  BookModels.fromJson(Map<String, dynamic> json) {
    kind = json["kind"];
    totalItems = json["totalItems"];
    items = json["items"] == null
        ? null
        : (json["items"] as List).map((e) => Item.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["kind"] = kind;
    _data["totalItems"] = totalItems;
    if (items != null) {
      _data["items"] = items?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}

