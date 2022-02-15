import 'package:dio/dio.dart';
import 'package:news_app/domain/entities/article_entity.dart';

class ApiClient {
  final _dio = Dio();
  final String _apiKey = '&apiKey=491be5669c9a4f7fb5a1dce87e3df129';
  final String _country = 'country=ru';
  final String _parameter = '/top-headlines?';
  final String _baseUrl = 'https://newsapi.org/v2';

  Future<List<ArticleEntity>> getArticles() async {
    final uri = '$_baseUrl$_parameter$_country$_apiKey';

    final response = await _dio.get(uri);
    final request = response.data['articles'] as List;

    final res = request.map((e) => ArticleEntity.fromJson(e)).toList();
    return res;

    // final url = Uri.parse(uri);
    //
    // final response = await http.get(url);
    // final request = jsonDecode(response.body)['articles'] as List;
    //
    // final res = request.map((e) => Article.fromJson(e)).toList();
    // return res;
  }
}
