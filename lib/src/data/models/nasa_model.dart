import 'collection.dart';

class NasaSearchEngine {
  Collection? collection;

  NasaSearchEngine({this.collection});

  NasaSearchEngine.fromJson(Map<String, dynamic> json) {
    collection = json['collection'] != null
        ? Collection.fromJson(json['collection'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (collection != null) {
      data['collection'] = collection!.toJson();
    }
    return data;
  }
}









