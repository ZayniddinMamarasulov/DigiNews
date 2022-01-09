import 'package:flutter/material.dart';
import 'package:news_app/colors.dart';


class NotificatinPage extends StatefulWidget {
  const NotificatinPage({Key? key}) : super(key: key);

  @override
  _NotificatinPageState createState() => _NotificatinPageState();
}

class _NotificatinPageState extends State<NotificatinPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Row(
          children: [
            const SizedBox(width: 8,),
            IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.black,),
              onPressed: ()=>{},
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text("Notification", style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.w700
              ),),
              SizedBox(height: 16,),
              Text("Recent", style: TextStyle(
                  fontSize: 18, fontWeight: FontWeight.w700
              ),),
              SizedBox(height: 16,),
              FollowingMassage(),
              SizedBox(height: 16,),
              Line(),
              SizedBox(height: 16,),
              LikedMassage(),
              SizedBox(height: 24,),
              Text('Older Notifications', style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 18,
              ),),
              SizedBox(height: 16,),
              Congrats(),
              SizedBox(height: 16,),
              Line(),
              SizedBox(height: 16,),
              FollowedMassage(),
              SizedBox(height: 16,),
              Line(),
              SizedBox(height: 16,),
              FollowingMassages(),
              SizedBox(height: 16,),
              Line(),
              SizedBox(height: 16,),
              FollowedMassage(),
              SizedBox(height: 16,),
              Line(),
              SizedBox(height: 16,),
              LikedPost(),
              SizedBox(height: 16,),
              Line(),
              SizedBox(height: 16,),
              LikedPost(),
              SizedBox(height: 16,),
            ],
          ),
        ),
      ),

    );
  }
}


class FollowingMassage extends StatelessWidget {
  const FollowingMassage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String name;
    int time;
    name = 'Cristina Angel';
    time=23;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 20,
          backgroundColor: Colors.pinkAccent,
          child: Image.asset('assets/avatar_angela.png'),
        ),
        const SizedBox(width: 16,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox( width: 160 ,child: RichText(text: TextSpan(text: name,
            style: const TextStyle( fontWeight: FontWeight.w700, color: Colors.black, fontSize: 14),
            children: const <TextSpan>[
              TextSpan(
                text: " is following you",
                style: TextStyle( fontWeight: FontWeight.w400, color: Colors.black, fontSize: 14),
              )
            ]
            ),
                          )),
            const SizedBox(height: 4,),
            Text('${time.toString()} mins ago', style: const TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.w400,
              fontSize: 12,
              height: 1.3,
            ),),
          ],
        ),
        Expanded(child: Container()),
        InkWell(
          onTap: ()=>{},
          child: Container(
            height: 36,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: AppColors.buttonColor,
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Center(
                child: Text("Follow", style: TextStyle( fontSize: 14,
                    color: Colors.white, ),),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class LikedMassage extends StatelessWidget {
  const LikedMassage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    String name;
    name='Salbila';
    int countlike;
    countlike=200;
    return Row(
      children: [
        Container(
          width: 40,
        ),
        const SizedBox(width: 16,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container( width: 168,
              child: RichText(text: TextSpan(
                text: name,
                style: const TextStyle( fontWeight: FontWeight.w700, color: Colors.black),
                children: <TextSpan>[
                 TextSpan(
                   text: ' and more $countlike more liked your post',
                   style: const TextStyle( fontWeight: FontWeight.w400, color: Colors.black),)
                ]

              )),
            ),
            const SizedBox(height: 4,),
            const Text('40 mins ago' , style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.w400,
              fontSize: 12,
              height: 1.3,
            ),),
          ],
        ),
         Expanded(child: Container()),
         Image.asset('assets/image_posted.png')


      ],
    );
  }
}

class Congrats extends StatelessWidget {
  const Congrats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: AppColors.buttonColor,
          radius: 20,
          child: const Text('10K', style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w900,
            color: Colors.white,
          ),),
        ),
        const SizedBox(width: 16,),
        Container( width: 240,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  const [
               Text('Congratulations Tiana, you have 10k followers!', style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 14, height: 1.8,
              ),),
               SizedBox(height: 4,),
               Text('1 day ago' , style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w400,
                fontSize: 12,
                 height: 1.3,
              ),),
            ],
          ),

        )
      ],
    );
  }
}

class Line extends StatelessWidget {
  const Line({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      color: Colors.grey.shade300,
    );
  }
}

class FollowedMassage extends StatelessWidget {
  const FollowedMassage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String name;
    int time;
    name = 'Cristina Angel';
    time=1;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 20,
          backgroundColor: Colors.pinkAccent,
          child: Image.asset('assets/avatar_angela.png'),
        ),
        const SizedBox(width: 16,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox( width: 160 ,child: RichText(text: TextSpan(text: name,
                style: const TextStyle( fontWeight: FontWeight.w700, color: Colors.black, fontSize: 14),
                children: const <TextSpan>[
                  TextSpan(
                    text: " is following you",
                    style: TextStyle( fontWeight: FontWeight.w400, color: Colors.black, fontSize: 14),
                  )
                ]
            ),
            )),
            const SizedBox(height: 4,),
            Text('${time.toString()} day ago', style: const TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.w400,
              fontSize: 12,
              height: 1.3,
            ),),
          ],
        ),
        Expanded(child: Container()),
        InkWell(
          onTap: ()=>{},
          child: Container(
            height: 36,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: AppColors.avatarBg,
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Center(
                child: Text("Following", style: TextStyle( fontSize: 14,  ),),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class FollowingMassages extends StatelessWidget {
  const FollowingMassages ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    String name;
    name='Salbila';
    int countlike;
    countlike=200;
    return Row(
      children: [
        Container(
          width: 40,
        ),
        const SizedBox(width: 16,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container( width: 168,
              child: RichText(text: TextSpan(
                  text: name,
                  style: const TextStyle( fontWeight: FontWeight.w700, color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                      text: ' and $countlike more following you',
                      style: const TextStyle( fontWeight: FontWeight.w400, color: Colors.black),)
                  ]

              )),
            ),
            const SizedBox(height: 4,),
            const Text('40 mins ago' , style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.w400,
              fontSize: 12,
              height: 1.3,
            ),),
          ],
        ),

      ],
    );
  }
}

class LikedPost extends StatelessWidget {
  const LikedPost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String name;
    int time;
    name = 'Alisher Ismoilov';
    time= 2;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 20,
          backgroundColor: Colors.pinkAccent,
          child: Image.asset('assets/avatar_angela.png'),
        ),
        const SizedBox(width: 16,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox( width: 160 ,child: RichText(text: TextSpan(text: name,
                style: const TextStyle( fontWeight: FontWeight.w700, color: Colors.black, fontSize: 14),
                children: const <TextSpan>[
                  TextSpan(
                    text: " liked your photo",
                    style: TextStyle( fontWeight: FontWeight.w400, color: Colors.black, fontSize: 14),
                  )
                ]
            ),
            )),
            const SizedBox(height: 4,),
            Text('${time.toString()} day ago', style: const TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.w400,
              fontSize: 12,
              height: 1.3,
            ),),
          ],
        ),
        Expanded(child: Container()),
        Image.asset('assets/post_liked.png')
      ],
    );
  }
}