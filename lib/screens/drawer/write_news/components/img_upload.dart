import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

Widget uploadWidget(){
  return DottedBorder(
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
  );
}