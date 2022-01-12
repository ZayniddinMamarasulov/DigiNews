import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Listpage extends StatefulWidget {
  const Listpage({Key? key}) : super(key: key);

  @override
  _ListpageState createState() => _ListpageState();
}

class _ListpageState extends State<Listpage> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: FractionalOffset.topCenter,
              end: FractionalOffset.bottomCenter,
              colors: [
                Colors.white.withOpacity(0.1),
                Colors.grey.withOpacity(0.8),
              ]
          ),),
        margin: const EdgeInsets.symmetric(horizontal: 24.0),
        child: ListView(
          children: [
            Row(
              children: [
                Image.asset("assets/images/Image.png"),
                SizedBox(width: 14,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Beuty",style: TextStyle(fontSize: 16,color: Colors.grey,
                        fontWeight: FontWeight.bold),),
                    Text("Benefit Serum For Protect \nYour Skin",
                      style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("1 day ago * 4 min read",style: TextStyle(color: Colors.grey),),
                        SizedBox(width: 150 ,),
                        Icon(Icons.bookmark_add_outlined,color: Colors.grey,),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Image.asset("assets/images/Image.png"),
                SizedBox(width: 14,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Education",style: TextStyle(fontSize: 16,color: Colors.grey,
                        fontWeight: FontWeight.bold),),
                    Text("Wels schools to get &6m \nanti-Covid air technology",
                      style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("1 day ago * 2 min read",style: TextStyle(color: Colors.grey),),
                        SizedBox(width: 150 ,),
                        Icon(Icons.bookmark_add_outlined,color: Colors.grey,),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Image.asset("assets/images/Image.png"),
                SizedBox(width: 14,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Beuty",style: TextStyle(fontSize: 16,color: Colors.grey,
                        fontWeight: FontWeight.bold),),
                    Text("Benefit Serum For Protect \nYour Skin",
                      style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("1 day ago * 4 min read",style: TextStyle(color: Colors.grey),),
                        SizedBox(width: 150 ,),
                        Icon(Icons.bookmark_add_outlined,color: Colors.grey,),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20,),

            Container(
              height: 60,
              color: Colors.red,
              margin: EdgeInsets.all(4.0),
            ),
            Container(
              height: 60,
              color: Colors.cyan,
              margin: EdgeInsets.all(4.0),
            ),
            Container(
              height: 60,
              color: Colors.blue,
              margin: EdgeInsets.all(4.0),
            ),
            Container(
              height: 60,
              color: Colors.blue,
              margin: EdgeInsets.all(4.0),
            ),
            Container(
              height: 60,
              color: Colors.blue,
              margin: EdgeInsets.all(4.0),
            ),
          ],
        ),
      ),
    );
  }
}
