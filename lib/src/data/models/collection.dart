import 'collection_links.dart';
import 'item.dart';

class Collection {
  String? version;
  String? href;
  List<Items>? items;
  Metadata? metadata;
  List<CollectionLinks>? links;

  Collection({this.version, this.href, this.items, this.metadata, this.links});

  Collection.fromJson(Map<String, dynamic> json) {
    version = json['version'];
    href = json['href'];
    if (json['items'] != null) {
      items = <Items>[];
      json['items'].forEach((v) => items!.add(Items.fromJson(v)));
    }
    metadata =
    json['metadata'] != null ? Metadata.fromJson(json['metadata']) : null;
    if (json['links'] != null) {
      links = <CollectionLinks>[];
      json['links'].forEach((v) => links!.add(CollectionLinks.fromJson(v)));
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['version'] = version;
    data['href'] = href;
    if (items != null) {
      data['items'] = items!.map((v) => v.toJson()).toList();
    }
    if (metadata != null) {
      data['metadata'] = metadata!.toJson();
    }
    if (links != null) {
      data['links'] = links!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}