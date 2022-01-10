import 'package:flutter/material.dart';
import 'package:news_app/utils/app_colors.dart';

GestureDetector followInfo(int index) {
  return GestureDetector(
    onTap: () {
      debugPrint("Follow");
    },
    child: Container(
      margin: const EdgeInsets.only(top: 16, bottom: 8, right: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const CircleAvatar(
            backgroundImage: NetworkImage(
                "https://assets-global.website-files.com/5ec7dad2e6f6295a9e2a23dd/5edfa7c6f978e75372dc332e_profilephoto1.jpeg"),
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
                      text: "Christina Angel",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    TextSpan(
                      text: ' is',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: '\nfollowing you',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              Text(
                "${13 - index} minut age",
                style: const TextStyle(color: Colors.black45),
              ),
            ],
          ),
          const Spacer(),
          Container(
            width: 90,
            height: 40,
            decoration: BoxDecoration(
                color: AppColors.followButtonColor,
                borderRadius: BorderRadius.circular(7)),
            child: const Center(
                child: Text(
                  "Follow",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 14),
                )),
          ),
        ],
      ),
    ),
  );
}

GestureDetector followingInfo() {
  return GestureDetector(
    onTap: () {
      debugPrint("Following");
    },
    child: Container(
      margin: const EdgeInsets.only(top: 24, bottom: 8, right: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const CircleAvatar(
            backgroundImage: NetworkImage(
                "https://assets-global.website-files.com/5ec7dad2e6f6295a9e2a23dd/5edfa7c6f978e75372dc332e_profilephoto1.jpeg"),
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
                      text: "Justina horan",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    TextSpan(
                      text: ' is following',
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                    TextSpan(
                      text: '\nyou',
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                "1 day age",
                style: TextStyle(color: Colors.black45),
              ),
            ],
          ),
          const Spacer(),
          Container(
            width: 115,
            height: 40,
            decoration: BoxDecoration(
                color: AppColors.followingButtonColor,
                borderRadius: BorderRadius.circular(7)),
            child: const Center(
                child: Text(
                  "Following",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                      fontSize: 14),
                )),
          ),
        ],
      ),
    ),
  );
}

GestureDetector followingYouInfo() {
  return GestureDetector(
    onTap: () {
      debugPrint("Following you");
    },
    child: Container(
      margin: const EdgeInsets.only(top: 24, bottom: 8,right: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const CircleAvatar(
            backgroundImage: NetworkImage(
                "https://assets-global.website-files.com/5ec7dad2e6f6295a9e2a23dd/5edfa7c6f978e75372dc332e_profilephoto1.jpeg"),
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
                      text: "Jessica ",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    TextSpan(
                      text: ' and 200 more following you',
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                "2 day age",
                style: TextStyle(color: Colors.black45),
              ),
            ],
          ),
          const Spacer()
        ],
      ),
    ),
  );
}