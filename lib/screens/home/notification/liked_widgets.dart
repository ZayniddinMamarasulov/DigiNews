import 'package:flutter/material.dart';

Container likedPost(int index) {
  return Container(
    margin: const EdgeInsets.only(top: 16, bottom: 8, right: 16),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const CircleAvatar(
          backgroundImage: NetworkImage(
              "https://avatars.mds.yandex.net/i?id=2a00000179efd01401a71a3ff1339564cbdf-5132380-images-thumbs&n=13&exp=1"),
          maxRadius: 24,
        ),
        const SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: "Salsabila",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  TextSpan(
                    text: ' and 200 more',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  TextSpan(
                    text: '\nliked your post',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            Text(
              "${23 + index} minut age",
              style: const TextStyle(color: Colors.black45),
            ),
          ],
        ),
        const Spacer(),
        Image.asset(
          "assets/images/Image.png",
          width: 82,
          fit: BoxFit.fitWidth,
        ),
      ],
    ),
  );
}

Container likedYourPost() {
  return Container(
    margin: const EdgeInsets.only(top: 16, bottom: 8, right: 16),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const CircleAvatar(
          backgroundImage: NetworkImage(
              "https://avatars.mds.yandex.net/i?id=2a00000179efd01401a71a3ff1339564cbdf-5132380-images-thumbs&n=13&exp=1"),
          maxRadius: 24,
        ),
        const SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: "Salsabila",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  TextSpan(
                    text: ' and 200 more',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  TextSpan(
                    text: '\nliked your post',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              "23 minut age",
              style: TextStyle(color: Colors.black45),
            ),
          ],
        ),
        const Spacer(),
        Image.asset(
          "assets/images/Image.png",
          width: 82,
          fit: BoxFit.fitWidth,
        ),
      ],
    ),
  );
}