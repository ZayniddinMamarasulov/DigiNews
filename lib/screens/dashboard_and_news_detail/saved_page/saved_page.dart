import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';

import 'bookmark_list.dart';

class SavedPage extends StatefulWidget {
  const SavedPage({Key? key}) : super(key: key);

  @override
  _SavedPageState createState() => _SavedPageState();
}

class _SavedPageState extends State<SavedPage> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarOnBookmarksPage(context),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            child: const Text(
              'bookmarks',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
            ).tr(),
          ),
          const BookmarkList(),
        ],
      ),
    );
  }

  AppBar appBarOnBookmarksPage(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: Container(
          width: 250,
          child: TextField(
            decoration: const InputDecoration(
                hintText: 'search',
                hintStyle: TextStyle(
                    // color: Colors.white,
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
            });
          },
        )
      ],
    );
  }
}
