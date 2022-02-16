import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:news_app/models/articls.dart';
import 'package:news_app/screens/dashboard_and_news_detail/home/details_screen.dart';

class NewsItem extends StatelessWidget {
  final Article article;

  const NewsItem({Key? key, required this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var dateParsed = DateTime.tryParse(article.publishedAt);
    dateParsed = dateParsed ?? DateTime.now();
    String publishDate =
    DateFormat('dd-mm, yyyy').format(dateParsed).toString();
    String publishTime = DateFormat('hh:mm').format(dateParsed).toString();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => DetailsPage(article: article)));
        },
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  article.source.name,
                  style: const TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      '$publishDate  | $publishTime  ',
                      style:
                      const TextStyle(color: Colors.grey, fontSize: 12.0),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(height: 8.0),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.network(article.urlToImage ?? article.defaultImageLink,
                    width: 120, height: 80),
                const SizedBox(width: 12.0),
                Expanded(
                  child: Text(
                    article.title,
                    style: const TextStyle(
                        fontWeight: FontWeight.w500, height: 1.2),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}