import 'package:clone_newsapp/models/articlesmodel.dart';
import 'package:dio/dio.dart';

class Newsservices {
  Dio dio = Dio();

  Future<List<Articlemodel>> generalnews({required String catgory}) async {
    try {
      var response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=596a09480dba4f8eb5c4066792a28da5&category=$catgory');
      Map<String, dynamic> jsondata = response.data;
      List<dynamic> articles = jsondata["articles"];
      List<Articlemodel> getarticle = [];
      for (var article in articles) {
        Articlemodel articlemodel = Articlemodel.json(article);
        getarticle.add(articlemodel);
      }
      return getarticle;
    } catch (e) {
      return [];
      // TOD
    }
  }
}
