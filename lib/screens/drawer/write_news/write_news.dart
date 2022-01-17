import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:news_app/screens/drawer/write_news/components/app_bar.dart';


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
              DottedBorder(
                dashPattern: const [6, 6],
                borderType: BorderType.RRect,
                color: Colors.grey.shade300,
                radius: const Radius.circular(12),
                padding: const EdgeInsets.all(6),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                  child: InkWell(
                    onTap: () {},
                    child: SizedBox(
                      height: 120,
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.cloud_upload_outlined),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            'Upload PDF, PNG, JPG, MP4 (max 5MB)',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              height: 1.3,
                              color: Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
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
                border: const OutlineInputBorder(),
                fillColor: Colors.grey.shade200,
                hintText: "Write a title",
              )),
            ],
          ),
        ),
      ),
    );
  }
}
