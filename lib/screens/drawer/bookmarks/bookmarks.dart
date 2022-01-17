import 'package:flutter/material.dart';
import 'package:news_app/screens/drawer/bookmarks/components/app_bar.dart';
import 'package:news_app/utils/static_data.dart';


class BookmarksPage extends StatefulWidget {
  const BookmarksPage({Key? key}) : super(key: key);

  @override
  _BookmarksPageState createState() => _BookmarksPageState();
}

class _BookmarksPageState extends State<BookmarksPage> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: buildAppBar(context),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                const Text(
                  'Bookmarks',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                ),
                SizedBox(height: height*0.02,),
                Container(
                  height: height*0.87,
                  width: width,
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: StaticData.latestNews.length,
                    itemBuilder: (BuildContext context, int index) {
                      var list = StaticData.latestNews[index];
                      return Container(

                        padding: const EdgeInsets.only(top: 15),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 96,
                                  width: 80,
                                  margin: const EdgeInsets.only(right: 12.0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: NetworkImage(list.image),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 250,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(list.category),
                                      Text(
                                        list.title,
                                        style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              const Text('1 days ago | '),
                                              Text('${list.readingTime} mins read'),
                                            ],
                                          ),
                                          const Icon(
                                            Icons.bookmark_add_outlined,
                                            color: Colors.grey,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Divider(height: 15,),
                          ],
                        ),
                      );
                    },
                  ),

                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
