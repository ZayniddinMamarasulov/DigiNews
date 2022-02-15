import 'package:flutter/material.dart';
import 'package:news_app/presentation/screens/dashboard_and_news_detail/saved_page/app_bar.dart';

import 'components/form_for_phone_number.dart';
import 'components/info_text.dart';

class RecoveryPassByPhoneNumber extends StatelessWidget {
  const RecoveryPassByPhoneNumber({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          children: const [
            ResetPassInfoText(method: 'phone number'),
            PhoneNumberForm(),
          ],
        ),
      ),
    );
  }
}
