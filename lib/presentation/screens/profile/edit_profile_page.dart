import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import '../../../../main_navigation.dart';
import 'components/create_button.dart';
import 'components/form_field_pages.dart';
import 'components/phone_pages.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
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
  final _formKey = GlobalKey<FormState>();
  bool passError = false;
  bool nameError = false;
  bool emailError = false;
  bool textError =false;
  String? errorText;
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
                title: const Text("Gallery"),
                leading: const Icon(Icons.account_box,color: Colors.blue,),
              ),

              const Divider(height: 1,color: Colors.blue,),
              ListTile(
                onTap: (){
                  _openCamera(context);
                },
                title: const Text("Camera"),
                leading: const Icon(Icons.camera,color: Colors.blue,),
              ),
            ],
          ),
        ),);
    });
  }
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
             image(),
              const SizedBox(height: 24,),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: const [
                    FormFieldPages(),
                  ],
                ),
              )
            ],
          ),
         Container(
           padding: const EdgeInsets.symmetric(horizontal: 20),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               const PhonePages(),
              const Text("Bio",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
               const SizedBox(height: 10,),
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
                const SizedBox(height: 10,),
               Container(
                   padding: const EdgeInsets.symmetric(horizontal: 20),
                   child: ViewButton(func: _func)
               ),
               const SizedBox(height: 20,),
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

  // Widget image(){
  //   return Stack(
  //     children: [
  //       Padding(
  //         padding: const EdgeInsets.symmetric(horizontal: 0,vertical: 0),
  //         child: Center(
  //           child: Container(
  //             padding: const EdgeInsets.symmetric(horizontal: 50),
  //             child: CircleAvatar(
  //               maxRadius: 48,
  //               backgroundColor: Colors.grey[200],
  //               backgroundImage:( imageFile==null)? const AssetImage("assets/images/avatar_sample.png") :Image.file(
  //                 File (  imageFile!.path),
  //                 fit: BoxFit.cover,
  //               ).image,
  //             ),
  //           ),
  //
  //         )
  //
  //       ),
  //           Container(
  //             margin: const EdgeInsets.only(left: 120,right: 40,bottom: 40,top: 65),
  //             child: InkWell(
  //               onTap: (){
  //                 setState(() {
  //                   _showChoiceDialog(context);
  //                 });
  //               },
  //               child: Stack(
  //                 children: const [
  //                   // Container(
  //                   //   height: 32,
  //                   //   width: 32,
  //                   //   decoration: BoxDecoration(
  //                   //       borderRadius: BorderRadius.circular(16),
  //                   //       color: Colors.white
  //                   //   ),
  //                   // ),
  //                   Padding(
  //                     padding: EdgeInsets.symmetric(horizontal: 9,vertical: 8),
  //                     child: Image(
  //                       image: AssetImage(
  //                           "assets/images/Upload.png"
  //                       ),
  //                       color: Colors.white,
  //                     ),
  //                   )
  //                 ],
  //               ),
  //             ),
  //           ),
  //       ],
  //    );
  Widget image(){
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0,vertical: 0,),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 150),
            child: CircleAvatar(
              maxRadius: 48,
              backgroundColor: Colors.grey[200],
              backgroundImage:( imageFile==null)? const AssetImage("assets/images/avatar_sample.png") :Image.file(
                File(  imageFile!.path),
                fit: BoxFit.cover,
              ).image,
            ),
          ),


        ),


            Container(
              margin: const EdgeInsets.only(left: 18,right: 20,),
              width: double.infinity,
              child: InkWell(
                onTap: (){
                  setState(() {
                    _showChoiceDialog(context);
                  });
                },
                child: Center(
                    child: Stack(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 64,top: 64),
                          child: Image(image: AssetImage("assets/images/Upload.png")),
                        )
                      ],
                    )
                ),
              ),
            ),
         ],
      );
   }
}
