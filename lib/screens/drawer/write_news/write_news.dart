import 'package:flutter/material.dart';
import 'package:news_app/screens/drawer/write_news/components/add_topic.dart';
import 'package:news_app/screens/drawer/write_news/components/app_bar.dart';
import 'package:news_app/screens/drawer/write_news/components/img_upload.dart';

class WriteNews extends StatefulWidget {
  const WriteNews({Key? key}) : super(key: key);

  @override
  _WriteNewsState createState() => _WriteNewsState();
}

class _WriteNewsState extends State<WriteNews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Upload News Cover",
                style: TextStyle(
                  fontSize: 18,
                  height: 1.4,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              uploadWidget(),
              const SizedBox(
                height: 16,
              ),
              const Text(
                "Title",
                style: TextStyle(
                  fontSize: 18,
                  height: 1.4,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  fillColor: Colors.grey.shade200,
                  hintText: "Write a title",
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                "Content",
                style: TextStyle(
                  fontSize: 18,
                  height: 1.4,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              TextField(
                maxLines: 6,
                decoration: InputDecoration(
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  fillColor: Colors.grey.shade200,
                  hintText: "Write a title",
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                'Topic',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 8,
              ),
              const AddTopics(),
            ],
          ),
        ),
      ),
    );
  }
}
