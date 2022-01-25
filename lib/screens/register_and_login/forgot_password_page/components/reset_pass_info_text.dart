import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';

class ResetPassInfoText extends StatelessWidget {
  const ResetPassInfoText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0, bottom: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'resetPass',
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
          ).tr(),
          const SizedBox(height: 8),
          Text(
            'resetPAssText',
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Colors.grey.shade600),
          ).tr(),
        ],
      ),
    );
  }
}
