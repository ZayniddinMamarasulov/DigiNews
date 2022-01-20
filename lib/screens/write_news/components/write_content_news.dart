import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';

class WriteContentNews extends StatelessWidget {
  WriteContentNews({Key? key}) : super(key: key);

  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'content',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          ).tr(),
          const SizedBox(height: 8),
          Container(
            height: 260,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.grey.shade50,
            ),
            child: TextField(
              maxLines: null,
              minLines: null,
              expands: true,
              controller: _controller,
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                hintText: 'writingArea'.tr(),
                hintStyle: TextStyle(color: Colors.grey.shade500),
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
