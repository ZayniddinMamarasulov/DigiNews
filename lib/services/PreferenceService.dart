import 'dart:convert';
import 'package:news_app/models/news.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PreferenceService {
  void saveBookmarks(List<News> news) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String bookmarks = jsonEncode(news);
    prefs.setString('bookmarks', bookmarks);
  }

  Future<List<News>> getBookmarks() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var res = prefs.getString('bookmarks') ?? "";
    List jsonResponse = json.decode(res);
    return jsonResponse.map((news) => News.fromJson(news)).toList();
  }

  void setThemeMode(bool isDark) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('isDark', isDark);
  }

  Future<bool> getThemeMode() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool('isDark') ?? false;
  }
}
