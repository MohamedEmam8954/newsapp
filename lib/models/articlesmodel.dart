class Articlemodel {
  String? image;
  String title;
  String? subtitle;
  Articlemodel(
      {required this.image, required this.title, required this.subtitle});
  factory Articlemodel.json(data) {
    return Articlemodel(
        image: data["urlToImage"],
        title: data["title"],
        subtitle: data["content"]);
  }
}
