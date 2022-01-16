import 'package:flutter/material.dart';
import 'package:news_app/utils/app_colors.dart';

class PopularBanner extends StatefulWidget {
  static const String id="popular_banner";
  const PopularBanner({Key? key}) : super(key: key);

  @override
  _PopularBannerState createState() => _PopularBannerState();
}

class _PopularBannerState extends State<PopularBanner> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 12),
      width: double.infinity,
      height: 400,
      decoration:  BoxDecoration(
        borderRadius: BorderRadius.circular(20),
          image: const DecorationImage(
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
                      child: Text("Food",style: TextStyle(fontSize: 12,color: AppColors.foodColor),),
                    ),
                  )
                ],
              )
          ),
        ],
      ),
    );
  }
}
