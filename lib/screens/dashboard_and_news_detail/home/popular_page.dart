import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/main_navigation.dart';
import 'package:news_app/models/articls.dart';
import 'package:news_app/models/news.dart';
import 'package:news_app/screens/dashboard_and_news_detail/home/components/popular_carousel.dart';
import 'package:news_app/screens/dashboard_and_news_detail/home/news_item.dart';
import 'package:news_app/services/PreferenceService.dart';
import 'package:news_app/services/api_client.dart';
import 'package:news_app/utils/static_data.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PopularPage extends StatefulWidget {
  const PopularPage({Key? key}) : super(key: key);

  @override
  _PopularPageState createState() => _PopularPageState();
}

class _PopularPageState extends State<PopularPage> {
  List<News> bookList = [];
  late final PreferenceService preferenceService;

  @override
  void initState() {
    super.initState();
    preferenceService = PreferenceService();
    _apiClient.getFromApi('ru');
  }

  _saveBookmark(News news) async {
    bookList.add(news);
    preferenceService.saveBookmarks(bookList);
  }

  _updateBookmarks(News news) async {
    bookList.remove(news);
    preferenceService.saveBookmarks(bookList);
    setState(() {
      
    });
  }

  final _apiClient=ApiClient();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        children: [
          const PopularCarousel(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'latestNews',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ).tr(),
                const Text(
                  'seeMore',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.redAccent,
                  ),
                ).tr(),
              ],
            ),
          ),
          const SizedBox(height: 8),
      Container(
        margin: const EdgeInsets.only(top: 8.0),
        child: FutureBuilder(
          future: _apiClient.getFromApi('ru'),
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (snapshot.hasData) {
              return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        NewsItem(article: snapshot.data[index] as Article),
                        const Divider(thickness: 1.0),
                      ],
                    );
                  });
            } else {
              return Container();
            }
          },
        ),
      ),
        ],
      ),
    );
  }
}
