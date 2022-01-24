import 'package:flutter/material.dart';
import 'package:news_app/utils/app_colors.dart';

class NewsDetail extends StatefulWidget {
  const NewsDetail({Key? key}) : super(key: key);

  @override
  State<NewsDetail> createState() => _NewsDetailState();
}

class _NewsDetailState extends State<NewsDetail> {
  final bool _pinned = false;
  final bool _snap = false;
  final bool _floating = false;

// [SliverAppBar]s are typically used in [CustomScrollView.slivers], which in
// turn can be placed in a [Scaffold.body].
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 700,
            width: double.infinity,
            child: CustomScrollView(
              slivers: <Widget>[
                SliverAppBar(
                  pinned: _pinned,
                  floating: _floating,
                  snap: _snap,
                  expandedHeight: 395,
                  backgroundColor: Colors.white,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 60),
                          Row(
                            children: [
                              IconButton(
                                icon: Image.asset(
                                  "assets/Icons/img.png",
                                  color: Colors.white,
                                ),
                                iconSize: 40,
                                onPressed: () {
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(
                                  //       builder: (context) =>
                                  //           const DashboardPage()),
                                  // );
                                  setState(() {});
                                },
                              ),
                              const SizedBox(width: 277),
                              IconButton(
                                icon: Image.asset("assets/Icons/img_icon1.png",
                                    color: Colors.white, height: 24, width: 24),
                                onPressed: () {
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(
                                  //       builder: (context) =>
                                  //           const DashboardPage()),
                                  // );
                                  setState(() {});
                                },
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 335),
                            child: IconButton(
                              icon: Image.asset("assets/Icons/img_icon2.png",
                                  color: Colors.white, width: 24, height: 24),
                              onPressed: () {
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //       builder: (context) =>
                                //           const DashboardPage()),
                                // );
                                setState(() {});
                              },
                            ),
                          ),
                          const SizedBox(height: 180),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius:
                                              BorderRadius.circular(12)),
                                      width: 52,
                                      height: 24,
                                      child: const Center(
                                          child: Text(
                                        "Food",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold),
                                      )),
                                    ),
                                    const SizedBox(width: 11),
                                    const Text("6 min read 10 mins ago"),
                                  ],
                                ),
                                const SizedBox(height: 12),
                                const Text(
                                  "Here's What You Need To",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 24),
                                ),
                                const Text(
                                  "Know About Dumplings",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 24),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      decoration: const BoxDecoration(
                          color: Colors.blue,
                          image: DecorationImage(
                              image: AssetImage("assets/img_detailNews.png"),
                              fit: BoxFit.fill)),
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 25),
                      Padding(
                        padding: const EdgeInsets.only(left: 24),
                        child: Row(
                          children: [
                            signButtonss(),
                            const SizedBox(width: 26),
                            signButtons(),
                            const SizedBox(width: 16),
                            signButtonEnd()
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "D",
                                  style: TextStyle(
                                      fontSize: 48,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(width: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'umplings are intimidating (well, they can',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          color: AppColors.blackw700),
                                    ),
                                    Text(
                                      'be). But they also are, in fact, delicious.',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          color: AppColors.blackw700),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Text(
                              "English texts for beginners to practice "
                              "reading and comprehension online and for"
                              " free. Practicing your comprehension of w"
                              "ritten English will both improve your voc"
                              "abulary and understanding of grammar and "
                              "word order. The texts below"
                              " are designed to help you develop while"
                              " giving you an instant evaluation of your progress."
                              "Prepared by experienced English teachers, the texts,"
                              " articles and conversations are brief and "
                              "appropriate to your level of proficiency. "
                              "Take the multiple-choice quiz following each"
                              " text, and you'll get the results immediately."
                              " You will feel both challenged and accomplished!"
                              " You can even download (as PDF) and print the "
                              "texts and exercises. It's enjoyable, fun and free."
                              " Good luck! "
                              "These are short, famous texts in English from "
                              "classic sources like the Bible or Shakespeare. "
                              "Some texts have word definitions and explanations "
                              "to help you. Some of these texts are written in an"
                              " old style of English. Try to understand them,"
                              " because the English that we speak today is based "
                              "on what our great, great, great, great grandparents "
                              "spoke before! Of course, not all these texts were "
                              "originally written in English. The Bible, for example,"
                              " is a translation. But they are all well known in "
                              "English today, and many of them "
                              "express beautiful thoughts.",
                              strutStyle: StrutStyle(fontSize: 21),
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.blackw700),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                hintText: "Write comments...",
                counterStyle: TextStyle(
                    color: AppColors.blackw300,
                    fontWeight: FontWeight.w400,
                    fontSize: 18),
                icon:
                    Image.asset("assets/Icons/Send.png", height: 48, width: 48),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget signButtons() {
    return InkWell(
      onTap: () {
        // Navigator.of(context).push(_createRoute());
      },
      child: Container(
        decoration: BoxDecoration(
            color: AppColors.blackw200,
            borderRadius: BorderRadius.circular(40)),
        width: 85,
        height: 36,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/Icons/like.png", width: 24, height: 24),
            const SizedBox(width: 10),
            const Text(
              "634",
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }

  Widget signButtonss() {
    return InkWell(
      onTap: () {
        // Navigator.of(context).push(_createRoutes());
      },
      child: Container(
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(40)),
        width: 155,
        height: 36,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/Icons/img_2.png",
              width: 30,
              height: 30,
            ),
            const SizedBox(width: 10),
            const Text(
              "Jean Prangley",
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }

  Widget signButtonEnd() {
    return InkWell(
      onTap: () {
        // Navigator.of(context).push(_createRouteEnd());
      },
      child: Container(
        decoration: BoxDecoration(
            color: AppColors.blackw200, borderRadius: BorderRadius.circular(40)),
        width: 70,
        height: 36,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.comment),
            SizedBox(width: 10),
            Text(
              "32",
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }

  // Route _createRoute() {
  //   return PageRouteBuilder(
  //       pageBuilder: (context, animations, secondaryAnimation) => SingUp(),
  //       transitionsBuilder: (context, animation, secondaryAnimation, child) {
  //         const begin = Offset(1.0, 0.0);
  //         const end = Offset.zero;
  //         const curve = Curves.easeInOutQuad;
  //
  //         var tween =
  //             Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
  //
  //         return SlideTransition(
  //           position: animation.drive(tween),
  //           child: child,
  //         );
  //       });
  // }

  // Route _createRoutes() {
  //   return PageRouteBuilder(
  //       pageBuilder: (context, animations, secondaryAnimation) => LogingPage(),
  //       transitionsBuilder: (context, animation, secondaryAnimation, child) {
  //         const begin = Offset(1.0, 0.0);
  //         const end = Offset.zero;
  //         const curve = Curves.easeInOutQuad;
  //
  //         var tween =
  //             Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
  //
  //         return SlideTransition(
  //           position: animation.drive(tween),
  //           child: child,
  //         );
  //       });
  // }

  // Route _createRouteEnd() {
  //   return PageRouteBuilder(
  //       pageBuilder: (context, animations, secondaryAnimation) => LogingPage(),
  //       transitionsBuilder: (context, animation, secondaryAnimation, child) {
  //         const begin = Offset(1.0, 0.0);
  //         const end = Offset.zero;
  //         const curve = Curves.easeInOutQuad;
  //
  //         var tween =
  //             Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
  //
  //         return SlideTransition(
  //           position: animation.drive(tween),
  //           child: child,
  //         );
  //       });
  // }
}
