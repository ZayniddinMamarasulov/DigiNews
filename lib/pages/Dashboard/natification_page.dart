import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NatificationPage extends StatefulWidget {
  static const String id="natification_page";
  const NatificationPage({Key? key}) : super(key: key);

  @override
  _NatificationPageState createState() => _NatificationPageState();
}

class _NatificationPageState extends State<NatificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:24),
        child:ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                const Text("Notification",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w700),),
                SizedBox(height: 24,),
                const Text("Recent",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),),
                SizedBox(height: 20,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("assets/person_2.png"),
                    SizedBox(width: 14,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children:  const [
                        Text("Christiana Angel is",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w900),),
                        SizedBox(height: 5,),
                        Text('following you',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 14,color: Colors.grey),),
                        SizedBox(height: 5,),
                        Text('23 mins ago',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey),),
                      ],
                    ),
                    SizedBox(width: 90,),
                    FlatButton(onPressed: (){},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)
                      ),
                      color: Colors.red[700],
                      child:Text('Follow',style: TextStyle(fontSize:14,fontWeight: FontWeight.w400,color: Colors.white ),),
                    )
                  ],
                ),
                SizedBox(height: 16,),
                const Divider(height: 20,color: Colors.grey,),
                SizedBox(height: 8,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("assets/person_4.png"),
                    SizedBox(width: 14,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children:  const [
                        Text("Salsabila and 200 more",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w900),),
                        SizedBox(height: 5,),
                        Text('liked your post',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 14,color: Colors.grey),),
                        SizedBox(height: 5,),
                        Text('40 mins ago',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.grey),),
                      ],
                    ),
                    SizedBox(width: 70,),
                    Image.asset('assets/person_5.png')
                  ],
                ),
                SizedBox(height: 24,),
                const Text("Older Notification",style: TextStyle(fontWeight: FontWeight.w900,fontSize:18 ),),
                SizedBox(height: 16,),
                Row(
                  children: [
                    Image.asset('assets/10K.png'),
                    SizedBox(width: 14,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Congratuiations Tiana, you have 10k",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 14),),
                        SizedBox(height: 5,),
                        Text("followers!",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w900),),
                        SizedBox(height: 5,),
                        Text('1 day ago',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12,color: Colors.grey),)
                      ],
                    )

                  ],
                ),
                SizedBox(height: 16,),
                const Divider(height: 20,color: Colors.grey,),
                SizedBox(height: 8,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("assets/person_2.png"),
                    SizedBox(width: 14,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children:  const [
                        Text("Justin Horan is following",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w900),),
                        SizedBox(height: 5,),
                        Text('you',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 14,color: Colors.grey),),
                        SizedBox(height: 5,),
                        Text('1 day ago',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey),),
                      ],
                    ),
                    const SizedBox(width: 50,),
                    FlatButton(onPressed: (){},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)
                      ),
                      color: Colors.grey[200],
                      child:const Text('Following',style: TextStyle(fontSize:14,fontWeight: FontWeight.w400),),
                    )
                  ],
                ),
                SizedBox(height: 16,),
                const Divider(height: 20,color: Colors.grey,),
                SizedBox(height: 8,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/person_4.png'),
                    SizedBox(width: 14,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text('Jessica',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w900),),
                            Text(" and 200 more following you",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700,color: Colors.grey),)
                          ],
                        ),
                        SizedBox(height: 5,),
                        Text("2 days ago",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 12,color: Colors.grey),)
                      ],
                    )
                  ],
                ),
                SizedBox(height: 16,),
                const Divider(height: 20,color: Colors.grey,),
                SizedBox(height: 8,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/person_7.png'),
                    SizedBox(width: 14,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text('John Doe',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w900),),
                            Text(" liked your post",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700,color: Colors.grey),)
                          ],
                        ),
                        SizedBox(height: 5,),
                        Text("2 days ago",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 12,color: Colors.grey),)
                      ],
                    ),
                    SizedBox(width: 70,),
                    Image.asset('assets/person_8.png'),

                  ],
                ),
                const Divider(height: 20,color: Colors.grey,),
                SizedBox(height: 8,),
              ],
            ),
          ],
        )
      ),
    );
  }
}
