import 'package:flutter/material.dart';
import 'package:news_app/utils/app_colors.dart';

class TrendingPage extends StatefulWidget {
  static const String id="trending_page";
  const TrendingPage({Key? key}) : super(key: key);

  @override
  _TrendingPageState createState() => _TrendingPageState();
}

class _TrendingPageState extends State<TrendingPage> {
  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 24.0),
          width: double.infinity,
          height: 400,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/image.png"))
          ),
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children:  [
              const Padding(
                  padding: EdgeInsets.only(left: 24,right: 98,bottom: 24),
                  child:Text("Here's What You  Need To Know About Dumplings",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 24),)
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 26,right: 30,bottom: 48),
                  child:Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset('assets/person1.png'),
                      SizedBox(width: 12,),
                      const Text("Jean Prangley",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),),
                      SizedBox(width: 12,),
                      Image.asset('assets/ellips.png'),
                      SizedBox(width: 12,),
                      const Text("6 min read",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),),
                      SizedBox(width: 12,),
                      Image.asset('assets/ellips.png'),
                      SizedBox(width: 12,),
                      Container(
                        height: 24,
                        width: 52,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(24)
                        ),
                        child: const Center(
                          child: Text("Food",style: TextStyle(fontSize: 12,color: AppColors.colorE8),),
                        ),
                      )
                    ],
                  )
              ),

            ],
          ),
        ),
      ],
    );
  }
}
