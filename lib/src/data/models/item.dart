import 'data.dart';
import 'item_links.dart';

class Items {
  String? href;
  List<Data>? data;
  List<ItemLinks>? links;

  Items({this.href, this.data, this.links});

  Items.fromJson(Map<String, dynamic> json) {
    href = json['href'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) => data!.add(Data.fromJson(v)));
    }
    if (json['links'] != null) {
      links = <ItemLinks>[];
      json['links'].forEach((v) => links!.add(ItemLinks.fromJson(v)));
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> dataMap = {};
    dataMap['href'] = href;
    if (data != null) {
      dataMap['data'] = data!.map((v) => v.toJson()).toList();
    }
    if (links != null) {
      dataMap['links'] = links!.map((v) => v.toJson()).toList();
    }
    return dataMap;
  }
}