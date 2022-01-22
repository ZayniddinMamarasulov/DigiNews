import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
class CameraWidgetState extends State{
  static final String id="camera_page";
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
    // TODO: implement build
    return  Scaffold(
      appBar: AppBar(
        title: Text("Pick Image Camera"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              image(),
              // Card(
              //   child:( imageFile==null)?Text("Choose Image"): Image.file( File(  imageFile!.path)),
              // ),
              // MaterialButton(
              //   textColor: Colors.white,
              //   color: Colors.pink,
              //   onPressed: (){
              //     _showChoiceDialog(context);
              //   },
              //   child: Text("Select Image"),
              //
              // ),
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
              backgroundImage:( imageFile==null)? AssetImage("assets/images/user.png") :Image.file(
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
              margin: EdgeInsets.only(left: 130,right: 50,bottom: 50,top: 70),
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

    // return CircleAvatar(
    //   maxRadius: 48,
    //   backgroundColor: Colors.grey[200],
    //   backgroundImage:( imageFile==null)? AssetImage("assets/images/user.png") :Image.file(
    //     File(  imageFile!.path),
    //     fit: BoxFit.cover,
    //   ).image,
    // );
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