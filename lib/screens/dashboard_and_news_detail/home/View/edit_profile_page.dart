import 'package:flutter/material.dart';
import 'package:news_app/screens/dashboard_and_news_detail/home/View/components/form_field_pages.dart';
import 'package:news_app/utils/app_colors.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(left: 20,right: 20,top: 18),
            width: double.infinity,
            child: Center(
              child: Stack(
                children: const [
                  CircleAvatar(
                    maxRadius: 48,
                    backgroundColor: AppColors.bacgroundColor,
                    backgroundImage:
                    AssetImage("assets/images/avatar_sample.png"),
                  ),
                 Padding(
                   padding: EdgeInsets.only(left: 64,top: 64),
                   child: Image(image: AssetImage("assets/images/Upload.png")),
                 )
                ],
              )
            ),
          ),
          SizedBox(height: 24,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: const [
               FormFieldPages(),
              ],
            ),
          )
        ],
      )
    );
  }

}
