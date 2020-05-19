class ImageModel{
  int id;
  String url;
  String title;

  ImageModel();

  ImageModel.fromJson(parsedJson){
    id = parsedJson(['id']);
    url = parsedJson(['url']);
    title = parsedJson(['title']);
  }
}