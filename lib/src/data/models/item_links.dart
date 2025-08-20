class ItemLinks {
  String? href;
  String? rel;
  String? render;
  int? width;
  int? size;
  int? height;

  ItemLinks(
      {this.href, this.rel, this.render, this.width, this.size, this.height});

  ItemLinks.fromJson(Map<String, dynamic> json) {
    href = json['href'];
    rel = json['rel'];
    render = json['render'];
    width = json['width'];
    size = json['size'];
    height = json['height'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['href'] = href;
    data['rel'] = rel;
    data['render'] = render;
    data['width'] = width;
    data['size'] = size;
    data['height'] = height;
    return data;
  }
}