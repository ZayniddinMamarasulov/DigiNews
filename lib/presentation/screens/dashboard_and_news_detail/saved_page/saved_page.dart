import 'package:flutter/material.dart';
import 'package:news_app/data/services/PreferenceService.dart';
import 'package:news_app/domain/entities/news.dart';

class SavedPage extends StatefulWidget {
  const SavedPage({Key? key}) : super(key: key);

  @override
  _SavedPageState createState() => _SavedPageState();
}

class _SavedPageState extends State<SavedPage> {
  final controller = TextEditingController();
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
    bookmarks.remove(news);
    preferenceService.saveBookmarks(bookmarks);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: SizedBox(
            width: 250,
            child: TextField(
              decoration: const InputDecoration(
                  hintText: 'search',
                  hintStyle: TextStyle(
                    color: Colors.white,
                  )),
              controller: controller,
            )),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              setState(() {
                // isTap = !isTap;
                print(bookmarks.length);
              });
            },
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            child: const Text(
              'Bookmarks',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
            ),
          ),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: bookmarks.length,
            itemBuilder: (BuildContext context, int index) {
              var list = bookmarks[index];
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
                          image: NetworkImage(list.image),
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
                            list.category,
                            style: TextStyle(color: Colors.grey[600]),
                          ),
                          Text(
                            list.title,
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
                                  const Text(
                                    '1 days ago  •  ',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  Text(
                                    '${list.readingTime} mins read',
                                    style: const TextStyle(color: Colors.grey),
                                  ),
                                ],
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    list.isSaved = !list.isSaved;
                                    _updateBookmarks(list);
                                  });
                                },
                                child: Icon(
                                  list.isSaved
                                      ? Icons.bookmark_added_outlined
                                      : Icons.bookmark_add_outlined,
                                  color:
                                      list.isSaved ? Colors.black : Colors.grey,
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
          ),
        ],
      ),
    );
  }
}
