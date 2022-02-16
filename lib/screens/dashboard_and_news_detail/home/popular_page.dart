import 'package:flutter/material.dart';
import 'package:news_app/models/articles.dart';
import 'package:news_app/screens/dashboard_and_news_detail/home/components/popular_carousel.dart';
import 'package:news_app/screens/dashboard_and_news_detail/home/news_item.dart';
import 'package:news_app/utils/services/api_news.dart';

class PopularPage extends StatefulWidget {
  const PopularPage({Key? key}) : super(key: key);

  @override
  _PopularPageState createState() => _PopularPageState();
}
final _apiNews = ApiNews();

class _PopularPageState extends State<PopularPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        children: [
          PopularCarousel(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Latest News',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  'See more',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.redAccent,
                  ),
                ),
              ],
            ),
          ),
       FutureBuilder(
       future: _apiNews.getFromApi('ru'),
         builder: (BuildContext context , AsyncSnapshot<dynamic> snapshot) {
         if(snapshot.connectionState== ConnectionState.waiting) {
           return const Center(
             child: CircularProgressIndicator(),
           );
         }else if(snapshot.hasData){
           return ListView.builder(
             itemCount: snapshot.data.length,
               itemBuilder: (BuildContext context , int index){
               return Column(
                 children: [
                NewsItem(article: snapshot.data[index] as Article),
                   const Divider(thickness: 1.0,),
                 ],
               );
               });
         } else{
           return Container();
         }
         },
       )
        ],
      ),
    );
  }
}
