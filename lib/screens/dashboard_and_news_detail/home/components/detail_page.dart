
import 'package:flutter/material.dart';
import 'package:news_app/models/articles.dart';
import 'package:webview_flutter/webview_flutter.dart';


class DetailsPage extends StatelessWidget {
  final Article article;

  const DetailsPage({Key? key, required this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(article.title),
      ),
      body: WebView(
        initialUrl: article.url,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}

