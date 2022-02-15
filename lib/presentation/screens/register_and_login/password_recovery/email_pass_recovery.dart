import 'package:flutter/material.dart';
import 'package:news_app/presentation/screens/dashboard_and_news_detail/saved_page/app_bar.dart';

import 'components/form_for_email.dart';
import 'components/info_text.dart';

class RecoveryPassByEmail extends StatelessWidget {
  const RecoveryPassByEmail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          children: const [
            ResetPassInfoText(method: 'email'),
            EmailFormRecoveryPass(),
          ],
        ),
      ),
    );
  }
}
