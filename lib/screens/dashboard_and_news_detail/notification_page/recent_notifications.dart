import 'package:flutter/material.dart';

class RecentNotifications extends StatefulWidget {
  const RecentNotifications({Key? key}) : super(key: key);

  @override
  State<RecentNotifications> createState() => _RecentNotificationsState();
}

class _RecentNotificationsState extends State<RecentNotifications> {
  bool isTap = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Recent',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 12),
          myFollowingAccounts(),
          Divider(color: Colors.grey.shade200),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TwoAccountAvatar(),
                  const SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Salsabia',
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      const Text(
                        'and 200 more liked your post',
                        style: TextStyle(fontWeight: FontWeight.w400),
                      ),
                      Text(
                        '40 mins ago',
                        style: TextStyle(color: Colors.grey.shade400),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                height: 60,
                width: 80,
                child: Image.asset('assets/images/post_image_1.png'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Row myFollowingAccounts() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage(
                'assets/images/avatar_1.png',
              ),
              backgroundColor: Colors.pink,
            ),
            const SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Christian Angel',
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
              print(isTap);
              isTap = !isTap;
              print(isTap);
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

class TwoAccountAvatar extends StatelessWidget {
  const TwoAccountAvatar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 40,
      child: Stack(
        children: [
          CircleAvatar(
            radius: 12,
            backgroundColor: Colors.pink,
            backgroundImage: AssetImage(
              'assets/images/t_avatar_1.png',
            ),
          ),
          Positioned(
            left: 10,
            top: 10,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.white, width: 2),
              ),
              child: CircleAvatar(
                radius: 12,
                backgroundImage: AssetImage(
                  'assets/images/t_avatar_2.png',
                ),
                backgroundColor: Colors.pink,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
