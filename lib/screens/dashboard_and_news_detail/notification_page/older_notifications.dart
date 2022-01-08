import 'package:flutter/material.dart';

class OlderNotifications extends StatefulWidget {
  const OlderNotifications({Key? key}) : super(key: key);

  @override
  State<OlderNotifications> createState() => _OlderNotificationsState();
}

class _OlderNotificationsState extends State<OlderNotifications> {
  bool isTap = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Older Notifications',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const CircleAvatar(
                radius: 20,
                backgroundColor: Colors.pink,
                child: Text(
                  '10K',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w900),
                ),
              ),
              const SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(
                    width: 260,
                    child: Text(
                      'Congratulations Tiana, you have 10k followers!',
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                  ),
                  Text(
                    '23 mins ago',
                    style: TextStyle(color: Colors.grey.shade400),
                  ),
                ],
              ),
            ],
          ),
          Divider(color: Colors.grey.shade200),
          followingAccounts(),
          Divider(color: Colors.grey.shade200),
          likeMyPosts(
            avatar: 'avatar_1',
            name: 'Jon Doe',
            time: '1',
            postImage: 'post_image_1',
          ),
          likeMyPosts(
            avatar: 'avatar_1',
            name: 'Jon Doe',
            time: '1',
            postImage: 'post_image_1',
          ),
          likeMyPosts(
            avatar: 'avatar_1',
            name: 'Lili',
            time: '2',
            postImage: 'post_image_1',
          ),
          likeMyPosts(
            avatar: 'avatar_1',
            name: 'Jon Doe',
            time: '5',
            postImage: 'post_image_1',
          ),
        ],
      ),
    );
  }

  Widget likeMyPosts(
      {required String avatar,
      required String name,
      required String time,
      required String postImage}) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.pink,
                  child: Image.asset(
                    'assets/images/$avatar.png',
                    fit: BoxFit.fill,
                  ),
                ),
                const SizedBox(width: 12),
                SizedBox(
                  width: 180,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      RichText(
                        text: TextSpan(text: '', children: [
                          TextSpan(
                            text: name,
                            style: const TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),
                          ),
                          TextSpan(
                            text: ' liked your post',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.grey.shade900,
                            ),
                          ),
                        ]),
                      ),
                      Text(
                        '$time days ago',
                        style: TextStyle(color: Colors.grey.shade400),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              height: 60,
              width: 80,
              child: Image.asset('assets/images/$postImage.png'),
            ),
          ],
        ),
        Divider(color: Colors.grey.shade200),
      ],
    );
  }

  Row followingAccounts() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 20,
              backgroundColor: Colors.pink,
              child: Image.asset(
                'assets/images/avatar_1.png',
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Christina Angel',
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
                const Text(
                  'is following you',
                  style: TextStyle(fontWeight: FontWeight.w400),
                ),
                Text(
                  '23 mins ago',
                  style: TextStyle(color: Colors.grey.shade400),
                ),
              ],
            ),
          ],
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              isTap = !isTap;
            });
          },
          child: Text(
            isTap ? 'Following' : 'Follow',
            style: TextStyle(
              color: isTap ? Colors.black : Colors.white,
            ),
          ),
          style: ButtonStyle(
            elevation: MaterialStateProperty.all(0),
            backgroundColor: MaterialStateProperty.all(
              isTap ? Colors.grey.shade300 : const Color(0xffD8605D),
            ),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
