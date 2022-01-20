import 'package:flutter/material.dart';

class VerifyPage extends StatefulWidget {
  static const String id="verifypage";
  const VerifyPage({Key? key}) : super(key: key);

  @override
  _VerifyPageState createState() => _VerifyPageState();
}

class _VerifyPageState extends State<VerifyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: ListView(
        children: [

          Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 44,),
                const Text("Verify Login",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),),
                const SizedBox(height: 16,),
                const Text("Enter OTP Code send to tianaxxx@gmail.com",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),),
                const SizedBox(height: 10,),
                Row(
                  children: const [
                    Text("This code will expired in", style: TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w300),),
                    SizedBox(width: 5,),
                    Text("01:30", style: TextStyle(fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.red),)
                  ],
                ),
                const SizedBox(height: 40,),
                OtpPage()(),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Didn’t received the code?", style: TextStyle(
                        fontSize: 14, fontWeight: FontWeight.w400),),
                    SizedBox(width: 5,),
                    FlatButton(
                        onPressed: () {},
                        child: const Text("Resend Cod", style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Colors.red,
                            fontSize: 14),)
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  OtpPage() {}
}
