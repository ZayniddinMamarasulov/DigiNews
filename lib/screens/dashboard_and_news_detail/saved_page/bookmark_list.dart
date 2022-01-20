import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/news.dart';
import 'package:news_app/services/preference_service.dart';

class BookmarkList extends StatefulWidget {
  const BookmarkList({Key? key}) : super(key: key);

  @override
  State<BookmarkList> createState() => _BookmarkListState();
}

class _BookmarkListState extends State<BookmarkList> {
  late final PreferenceService preferenceService;
  List<News> bookmarks = [];

  @override
  void initState() {
    super.initState();
    preferenceService = PreferenceService();
    _getBookmark();
  }

  _getBookmark() async {
    bookmarks = await preferenceService.getBookmarks();
    setState(() {});
  }

  _updateBookmarks(News news) async {
    // news (bookmark) keladi, remove metod ochiradi
    bookmarks.remove(news);

    //shared'ga yangi listni saqlab qoyadi
    preferenceService.saveBookmarks(bookmarks);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: bookmarks.length,
      itemBuilder: (BuildContext context, int index) {
        var bookmark = bookmarks[index];
        print('category: ${bookmark.category}');

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
                    image: NetworkImage(bookmark.image),
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
                      bookmark.category,
                      style: const TextStyle(color: Colors.red),
                    ),
                    Text(
                      bookmark.title,
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
                              style: const TextStyle(color: Colors.grey),
                            ),
                            Text(
                              '${bookmark.readingTime} ${'readTime'.tr()}',
                              style: const TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _updateBookmarks(bookmark);
                            });
                          },
                          child: const Icon(
                            Icons.bookmark_added,
                            color: Colors.black,
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
