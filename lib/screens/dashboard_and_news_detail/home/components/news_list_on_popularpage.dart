import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/news.dart';
import 'package:news_app/services/preference_service.dart';
import 'package:news_app/utils/static_data.dart';

class NewsListOnPopularPage extends StatefulWidget {
  const NewsListOnPopularPage({Key? key}) : super(key: key);

  @override
  _NewsListOnPopularPageState createState() => _NewsListOnPopularPageState();
}

class _NewsListOnPopularPageState extends State<NewsListOnPopularPage> {
  List<News> bookList = [];
  late final PreferenceService preferenceService;

  @override
  void initState() {
    super.initState();
    preferenceService = PreferenceService();
  }

  _saveBookmark(News news) async {
    //news keladi, leistga qoshiladi, list shared'ga saqlanadi
    bookList.add(news);
    preferenceService.saveBookmarks(bookList);
  }

  _updateBookmarks(News news) async {
    //news keladi, leistdan o'chadi, yangi list shared'ga saqlanadi
    bookList.remove(news);
    preferenceService.saveBookmarks(bookList);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: StaticData.latestNews.length,
      itemBuilder: (BuildContext context, int index) {
        var news = StaticData.latestNews[index];
        return Container(
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
                    fit: BoxFit.fill,
                    image: NetworkImage(news.image),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.62,
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
                      // mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              '1 ${'dayAgo'.tr()}  •  ',
                              style: const TextStyle(color: Colors.grey),
                            ),
                            Text(
                              '${news.readingTime} ${'readTime'.tr()}',
                              style: const TextStyle(color: Colors.grey),
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
                                ? Icons.bookmark_added
                                : Icons.bookmark_add,
                            color: news.isSaved ? Colors.black : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Divider(),
        );
      },
    );
  }
}
