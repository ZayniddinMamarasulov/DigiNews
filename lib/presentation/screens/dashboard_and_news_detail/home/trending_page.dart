import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:news_app/data/services/api_client.dart';
import 'package:news_app/domain/entities/article_entity.dart';

class TrendingPage extends StatefulWidget {
  const TrendingPage({Key? key}) : super(key: key);

  @override
  _TrendingPageState createState() => _TrendingPageState();
}

class _TrendingPageState extends State<TrendingPage> {
  final _apiClient = ApiClient();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: _apiClient.getArticles(),
        builder: (BuildContext context,
            AsyncSnapshot<List<ArticleEntity>> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasData) {
            return ListView.separated(
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemCount: snapshot.data!.length,
              itemBuilder: (BuildContext context, int index) {
                var article = snapshot.data![index];

                var dateParsed = DateTime.tryParse(article.publishedAt);
                dateParsed = dateParsed ?? DateTime.now();
                String publishDate =
                    DateFormat('dd/M/yyyy').format(dateParsed).toString();
                String publishTime =
                    DateFormat('hh:mm').format(dateParsed).toString();

                return InkWell(
                  onTap: () {
                    /*Navigator.of(context).pushNamed(
                        MainNavigationRouteNames.newsDetail,
                        arguments: {'news': article});*/
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
                              image: NetworkImage(article.urlToImage ??
                                  article.defaultImageLink),
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
                                article.source.name,
                                style: TextStyle(color: Colors.grey[600]),
                              ),
                              Text(
                                article.title,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontSize: 16,
                                  height: 1.3,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        '$publishDate  |  $publishTime',
                                        style:
                                            const TextStyle(color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        article.isSaved = !article.isSaved;
                                        /*   if (news.isSaved) {
                                  _saveBookmark(news);
                                } else {
                                  _updateBookmarks(news);
                                }*/
                                      });
                                    },
                                    child: Icon(
                                      article.isSaved
                                          ? Icons.bookmark_added_outlined
                                          : Icons.bookmark_add_outlined,
                                      color: article.isSaved
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
            );
          } else {
            return const Center(
              child: Text('no data'),
            );
          }
        },
      ),
    );
  }
}
