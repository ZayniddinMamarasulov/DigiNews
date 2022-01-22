import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:news_app/screens/doshboard_and_news_detail/home/components/edit_formfields.dart';
import 'package:news_app/screens/register_and_login/password_recovery/components/form_for_phone_number.dart';

class EditProfilPage extends StatefulWidget {
  const EditProfilPage({Key? key}) : super(key: key);


  @override
  _EditProfilPageState createState() => _EditProfilPageState();
}

class _EditProfilPageState extends State<EditProfilPage> {


  PickedFile? imageFile=null;

  Future<void>_showChoiceDialog(BuildContext context)
  {
    return showDialog(context: context,builder: (BuildContext context){

      return AlertDialog(
        title:const Text("Choose option",style: TextStyle(color: Colors.blue),),
        content: SingleChildScrollView(
          child: ListBody(
            children: [
              const Divider(height: 1,color: Colors.blue,),
              ListTile(
                onTap: (){
                  _openGallery(context);
                },
                title: Text("Gallery"),
                leading: Icon(Icons.account_box,color: Colors.blue,),
              ),

              Divider(height: 1,color: Colors.blue,),
              ListTile(
                onTap: (){
                  _openCamera(context);
                },
                title: Text("Camera"),
                leading: Icon(Icons.camera,color: Colors.blue,),
              ),
            ],
          ),
        ),);
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   Container(
                     child: image(),
                   ),
                ]
              ),
              EditFormFilds(),
              SizedBox(
                  height: 56,
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {

                      },
                      style: buildButtonStyle(),
                      child: buttonChildText()
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }


  Widget image(){

    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 0,vertical: 0),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 50),
            child: CircleAvatar(
              maxRadius: 48,
              backgroundColor: Colors.grey[200],
              backgroundImage:( imageFile==null)? AssetImage("assets/images/avatar_sample.png") :Image.file(
                File(  imageFile!.path),
                fit: BoxFit.cover,
              ).image,
            ),
          ),


        ),


        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              margin: EdgeInsets.only(left: 120,right: 40,bottom: 40,top: 65),
              child: InkWell(
                onTap: (){
                  setState(() {
                    _showChoiceDialog(context);
                  });
                },
                child: Stack(
                  children: [
                    Container(
                      height: 32,
                      width: 32,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.white
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2,vertical: 2),
                      child: Image(
                        height: 28,
                        width: 28,
                        image: AssetImage(
                            "assets/icons/ic_photo2.png"
                        ),
                        color: Colors.black,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 9,vertical: 8),
                      child: Image(
                        image: AssetImage(
                            "assets/icons/ic_photo.png"
                        ),
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),

      ],
    );
  }


  void _openGallery(BuildContext context) async{
    final pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery ,
    );
    setState(() {
      imageFile = pickedFile!;
    });

    Navigator.pop(context);
  }

  void _openCamera(BuildContext context)  async{
    final pickedFile = await ImagePicker().getImage(
      source: ImageSource.camera ,
    );
    setState(() {
      imageFile = pickedFile!;
    });
    Navigator.pop(context);
  }
}

  Text buttonChildText() {
    return const Text(
      'Save changes',
      style: TextStyle(
          fontSize: 16, fontWeight: FontWeight.w700, color: Colors.white),
    );
  }




