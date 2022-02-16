import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:news_app/models/articles.dart';

class ApiNews {
  final String _apiKey = '&apiKey=2eebeaa50122431cb3c2a603d3920bae';
  final String _q = 'q=';
  final String _host = 'https://newsapi.org/v2/everything?';

  Future<List<Article>> getFromApi(String q) async {
    var uri ='$_host$_q$_apiKey';

    var url = Uri.parse(uri);
    final response = await http.get(url);

    final request = jsonDecode(response.body)['articles'] as List ;
    print(request);
    final res =request.map((e) => Article.fromJson(e)).toList();

    return res;


  }
}