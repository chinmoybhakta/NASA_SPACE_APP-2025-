class CollectionLinks {
  String? rel;
  String? prompt;
  String? href;

  CollectionLinks({this.rel, this.prompt, this.href});

  CollectionLinks.fromJson(Map<String, dynamic> json) {
    rel = json['rel'];
    prompt = json['prompt'];
    href = json['href'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['rel'] = rel;
    data['prompt'] = prompt;
    data['href'] = href;
    return data;
  }
}

class Metadata {
  int? totalHits;

  Metadata({this.totalHits});

  Metadata.fromJson(Map<String, dynamic> json) {
    totalHits = json['total_hits'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['total_hits'] = totalHits;
    return data;
  }
}
