class ImageModel {
  int id;
  String thumbnail;
  String title;

  ImageModel(this.id, this.title, this.thumbnail);

  ImageModel.fromJson(Map<String, dynamic> parsedJson)
    : id = parsedJson['id'],
      title = parsedJson['title'],
      thumbnail = parsedJson['thumbnail'];
}
