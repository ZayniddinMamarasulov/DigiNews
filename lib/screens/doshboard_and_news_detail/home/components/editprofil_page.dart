import 'package:flutter/material.dart';
class EditProfilPage extends StatefulWidget {
  const EditProfilPage({Key? key}) : super(key: key);

  @override
  _EditProfilPageState createState() => _EditProfilPageState();
}

class _EditProfilPageState extends State<EditProfilPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    CircleAvatar(
                      maxRadius: 56,
                      backgroundColor: Colors.grey[200],
                      backgroundImage:
                      AssetImage("assets/images/avatar_sample.png"),
                    ),

                    Image(
                      image: AssetImage(
                          "assets/icons/ic_photo.png"
                      ),
                      color: Colors.black,
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      )
    );
  }
}
