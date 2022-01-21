import 'package:flutter/material.dart';

import 'components/add_topics_widget.dart';
import 'components/app_bar.dart';
import 'components/upload_news_cover.dart';
import 'components/write_content_news.dart';
import 'components/write_title_news.dart';

class WriteNewsPage extends StatefulWidget {
  const WriteNewsPage({Key? key}) : super(key: key);

  @override
  _WriteNewsPageState createState() => _WriteNewsPageState();
}

class _WriteNewsPageState extends State<WriteNewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const UploadCoverWidget(),
              WriteTitleNews(),
              WriteContentNews(),
              AddTopicsWidget(),
              Container(
                height: 56,
                margin: const EdgeInsets.symmetric(vertical: 28),
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    backgroundColor:
                        MaterialStateProperty.all(Colors.grey.shade900),
                  ),
                  child: const Text(
                    'Publish',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
