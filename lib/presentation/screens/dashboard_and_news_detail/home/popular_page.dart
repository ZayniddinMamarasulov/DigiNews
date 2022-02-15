import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/data/services/PreferenceService.dart';
import 'package:news_app/domain/entities/news.dart';
import 'package:news_app/main_navigation.dart';
import 'package:news_app/utils/static_data.dart';

import 'components/popular_carousel.dart';

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
  }

  _saveBookmark(News news) async {
    bookList.add(news);
    preferenceService.saveBookmarks(bookList);
  }

  _updateBookmarks(News news) async {
    bookList.remove(news);
    preferenceService.saveBookmarks(bookList);
    setState(() {});
  }

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
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: StaticData.latestNews.length,
            itemBuilder: (BuildContext context, int index) {
              var news = StaticData.latestNews[index];
              return InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed(
                      MainNavigationRouteNames.newsDetail,
                      arguments: {'news': news});
                },
                child: Container(
                  height: 96,
                  margin: const EdgeInsets.symmetric(vertical: 4),
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 96,
                        width: 84,
                        margin: const EdgeInsets.only(right: 16.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(news.image),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 240,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              news.category,
                              style: TextStyle(color: Colors.grey[600]),
                            ),
                            Text(
                              news.title,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                fontSize: 16,
                                height: 1.3,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      '1 ${'dayAgo'.tr()}  •  ',
                                      style:
                                          const TextStyle(color: Colors.grey),
                                    ),
                                    Text(
                                      '${news.readingTime} ${'readTime'.tr()}',
                                      style:
                                          const TextStyle(color: Colors.grey),
                                    ),
                                  ],
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      news.isSaved = !news.isSaved;
                                      if (news.isSaved) {
                                        _saveBookmark(news);
                                      } else {
                                        _updateBookmarks(news);
                                      }
                                    });
                                  },
                                  child: Icon(
                                    news.isSaved
                                        ? Icons.bookmark_added_outlined
                                        : Icons.bookmark_add_outlined,
                                    color: news.isSaved
                                        ? Colors.black
                                        : Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Divider(),
              );
            },
          )
        ],
      ),
    );
  }
}
