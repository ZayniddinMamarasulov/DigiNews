import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/main_navigation.dart';
class MyProfilPage extends StatefulWidget {
  const MyProfilPage({Key? key}) : super(key: key);

  @override
  _MyProfilPageState createState() => _MyProfilPageState();
}

class _MyProfilPageState extends State<MyProfilPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    maxRadius: 36,
                    backgroundColor: Colors.grey,
                    backgroundImage:
                    AssetImage("assets/images/avatar_sample.png"),
                  ),
                  SizedBox(width: 10,),
                  SizedBox(
                    width: 200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Tianna Vitrovs",
                          style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10,),
                       const Text(
                          "Passionate Writer",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 16,
                            height: 1.3,
                            fontWeight: FontWeight.w700,
                            color: Colors.grey
                          ),
                        ),

                      ],
                    ),
                  ),
                  const SizedBox(width: 10,),
                  Column(
                    children: [
                     const SizedBox(height: 16,),
                      TextButton(
                          onPressed: (){
                            Navigator.of(context).pushNamed(MainNavigationRouteNames.editprofil);
                          },
                          child: const Text(
                            "Edit Profil",
                            style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(height: 15,),
              const Text(
                  "I am a passionate writer,currently working as a\nContent Creater at FizzBuzz. Based in Prague",
                style: TextStyle(
                    fontSize: 16,
                    height: 1.3,
                    fontWeight: FontWeight.w700,
                    color: Colors.grey
                ),
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Image(
                      image: AssetImage("assets/icons/ic_twitter.png"),
                  ),
                  SizedBox(width: 15,),
                  Image(
                    image: AssetImage("assets/icons/ic_net.png"),
                  ),
                  SizedBox(width: 10,),
                  Text("www.tianavetrovs.com",style: TextStyle(color: Colors.black,fontSize: 15),),
                ],
              ),
              SizedBox(height: 50,),
              Text("Posts",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
          Container(
            height: 96,
            margin: const EdgeInsets.symmetric(vertical: 4),
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 96,
                  width: 84,
                  margin: const EdgeInsets.only(right: 16.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/images/ic_infor.png"),
                    ),
                  ),
                ),
                SizedBox(
                  width: 240,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                       "Disign",
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                      Text(
                        "The Only Page Your Protfolio\nNeeds",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 16,
                          height: 1.3,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const Text(
                                '1 days ago  •  ',
                                style: TextStyle(color: Colors.grey),
                              ),
                              Text(
                                'mins read',
                                style: const TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {

                              });
                            },
                            child: Image(
                              image: AssetImage("assets/icons/ic_new.png"),
                            )
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
              SizedBox(height: 8,),
              Container(
                color: Colors.grey[400],
                height: 1,
              ),
              SizedBox(height: 8,),
              Container(
                height: 96,
                margin: const EdgeInsets.symmetric(vertical: 4),
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 96,
                      width: 84,
                      margin: const EdgeInsets.only(right: 16.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("assets/images/ic_infor2.png"),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 240,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Fashion",
                            style: TextStyle(color: Colors.grey[600]),
                          ),
                          Text(
                            "5 Fashion Trend for Spring\n2021 You Should Know",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              fontSize: 16,
                              height: 1.3,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  const Text(
                                    '1 days ago  •  ',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  Text(
                                    'mins read',
                                    style: const TextStyle(color: Colors.grey),
                                  ),
                                ],
                              ),
                              GestureDetector(
                                  onTap: () {
                                    setState(() {

                                    });
                                  },
                                  child: Image(
                                    image: AssetImage("assets/icons/ic_new.png"),
                                  )
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 8,),
              Container(
                color: Colors.grey[400],
                height: 1,
              ),
              SizedBox(height: 8,),
              Container(
                height: 96,
                margin: const EdgeInsets.symmetric(vertical: 4),
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 96,
                      width: 84,
                      margin: const EdgeInsets.only(right: 16.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("assets/images/ic_infor2.png"),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 240,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Fashion",
                            style: TextStyle(color: Colors.grey[600]),
                          ),
                          Text(
                            "5 Fashion Trend for Spring\n2021 You Should Know",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              fontSize: 16,
                              height: 1.3,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  const Text(
                                    '1 days ago  •  ',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  Text(
                                    'mins read',
                                    style: const TextStyle(color: Colors.grey),
                                  ),
                                ],
                              ),
                              GestureDetector(
                                  onTap: () {
                                    setState(() {

                                    });
                                  },
                                  child: Image(
                                    image: AssetImage("assets/icons/ic_new.png"),
                                  )
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
