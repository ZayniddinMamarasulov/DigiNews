import 'package:flutter/material.dart';
import 'package:news_app/screens/dashboard_and_news_detail/home/View/components/create_button.dart';
import 'package:news_app/screens/dashboard_and_news_detail/home/View/components/form_field_pages.dart';
import 'package:news_app/screens/dashboard_and_news_detail/home/View/components/phone_pages.dart';
import 'package:news_app/utils/app_colors.dart';

import '../../../../main_navigation.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  final _formKey = GlobalKey<FormState>();
  bool passError = false;
  bool nameError = false;
  bool emailError = false;
  bool textError =false;

  String? errorText;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body:ListView(
        children: [
          Column(
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
          ),
         Container(
           padding: EdgeInsets.symmetric(horizontal: 20),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
              Text("Bio",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
               SizedBox(height: 10,),
               Container(
                 height: 104,
                 width: double.infinity,
                 decoration: BoxDecoration(
                   color: Colors.grey[100],
                   borderRadius: BorderRadius.circular(12),
                 ),
                 child: const Padding(
                   padding: EdgeInsets.only(left: 16,right: 72,top: 20,bottom: 20),
                   child: Text("I am a passionate writer, currently working as a Content Creator at FizzBuzz. Based in Prague.",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18),),
                 ),
               ),
               SizedBox(height: 10,),
               PhonePages(),
               Container(
                   padding: EdgeInsets.symmetric(horizontal: 20),
                   child: ViewButton(func: _func)
               ),
               SizedBox(height: 20,),
             ],
           ),
         )
        ],
      )
    );
  }
  void _func() {
    final isValid = _formKey.currentState!.validate();

    if (isValid) {
      _formKey.currentState!.setState(() {});
      if (!passError && !emailError & !nameError) {
        Navigator.of(context).pushNamed(MainNavigationRouteNames.login);
        errorText = null;
      } else {
        print('error');
      }
    } else {
      print('error');
    }
  }
}
