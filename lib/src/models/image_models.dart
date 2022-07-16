class ImageModel {
  int albumId = 0;
  int id = 0;
  String thumbnailUrl = '';
  String title = '';
  String url = '';

  ImageModel(
    this.albumId,
    this.id,
    this.thumbnailUrl,
    this.title,
    this.url,
  );

  ImageModel.fromJson(Map<String, dynamic> parsedJson) {
    albumId = parsedJson['albumId'];
    id = parsedJson['id'];
    thumbnailUrl = parsedJson['thumbnailUrl'];
    title = parsedJson['title'];
    url = parsedJson['url'];
  }

  // Alternate syntax using colon
  // ImageModel.fromJson(Map<String, dynamic> parsedJson)
  //     : id = parsedJson['id'],
  //       url = parsedJson['url'],
  //       title = parsedJson['title'];
}
