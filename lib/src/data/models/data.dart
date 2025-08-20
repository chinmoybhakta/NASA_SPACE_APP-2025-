class Data {
  String? center;
  String? dateCreated;
  String? description;
  List<String>? keywords;
  String? mediaType;
  String? nasaId;
  String? title;
  List<String>? album;
  String? description508;
  String? secondaryCreator;
  String? location;
  String? photographer;

  Data(
      {this.center,
        this.dateCreated,
        this.description,
        this.keywords,
        this.mediaType,
        this.nasaId,
        this.title,
        this.album,
        this.description508,
        this.secondaryCreator,
        this.location,
        this.photographer});

  Data.fromJson(Map<String, dynamic> json) {
    center = json['center'];
    dateCreated = json['date_created'];
    description = json['description'];
    keywords = json['keywords'] != null ? List<String>.from(json['keywords']) : [];
    mediaType = json['media_type'];
    nasaId = json['nasa_id'];
    title = json['title'];
    album = json['album'] != null ? List<String>.from(json['album']) : [];
    description508 = json['description_508'];
    secondaryCreator = json['secondary_creator'];
    location = json['location'];
    photographer = json['photographer'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['center'] = center;
    data['date_created'] = dateCreated;
    data['description'] = description;
    data['keywords'] = keywords;
    data['media_type'] = mediaType;
    data['nasa_id'] = nasaId;
    data['title'] = title;
    data['album'] = album;
    data['description_508'] = description508;
    data['secondary_creator'] = secondaryCreator;
    data['location'] = location;
    data['photographer'] = photographer;
    return data;
  }
}