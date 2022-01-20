import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class UploadCoverWidget extends StatefulWidget {
  const UploadCoverWidget({Key? key}) : super(key: key);

  @override
  _UploadCoverWidgetState createState() => _UploadCoverWidgetState();
}

class _UploadCoverWidgetState extends State<UploadCoverWidget> {
  bool isLoadedImage = false;

  File? image;

  Future pickImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;

      final imageTemporary = File(image.path);
      setState(() => this.image = imageTemporary);
    } on PlatformException catch (e) {
      print('failed to pick image: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 12),
        const Text(
          'uploadCover',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
        ).tr(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: GestureDetector(
            onTap: _bottomSheetWidget,
            child: DottedBorder(
              strokeWidth: 1,
              radius: const Radius.circular(16),
              dashPattern: const [6, 3],
              borderType: BorderType.RRect,
              color: image != null ? Colors.transparent : Colors.grey.shade200,
              child: Container(
                height: 120,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: childWidget(),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget childWidget() {
    if (image != null) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.file(
              image!,
              fit: BoxFit.cover,
            ),
            Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                colors: [Colors.black26, Colors.black26],
              )),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.cloud_upload_rounded,
                  color: Colors.white,
                ),
                const SizedBox(height: 8),
                const Text(
                  'changeImage',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ).tr(),
              ],
            )
          ],
        ),
      );
    } else {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.cloud_upload_rounded,
            color: Colors.grey[700],
          ),
          const SizedBox(height: 8),
          Text(
            'Upload PNG, JPG (max 5MB)',
            style: TextStyle(color: Colors.grey[400], fontSize: 12),
          ),
        ],
      );
    }
  }

  _bottomSheetWidget() {
    showModalBottomSheet(
        builder: (BuildContext context) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.image),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                      pickImage(ImageSource.gallery);
                    },
                    child: const Text('gallery').tr(),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.camera_alt),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                      pickImage(ImageSource.camera);
                    },
                    child: const Text('camera').tr(),
                  ),
                ],
              ),
            ],
          );
        },
        context: context);
  }
}
