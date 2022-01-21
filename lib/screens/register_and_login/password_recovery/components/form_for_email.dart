import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';

class EmailFormRecoveryPass extends StatefulWidget {
  const EmailFormRecoveryPass({Key? key}) : super(key: key);

  @override
  _EmailFormRecoveryPassState createState() => _EmailFormRecoveryPassState();
}

class _EmailFormRecoveryPassState extends State<EmailFormRecoveryPass> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController controller = TextEditingController();
  String errorMessage = '';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32.0),
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildTitleText(),
            _CustomContainer(
              child: TextFormField(
                controller: controller,
                autofocus: true,
                keyboardType: TextInputType.emailAddress,
                style: const TextStyle(fontSize: 16),
                decoration: const InputDecoration(
                  border: InputBorder.none,
                ),
                validator: (value) {
                  if (!(RegExp('@').hasMatch(value!))) {
                    setState(() {
                      errorMessage = '- Invalid email';
                    });
                  } else {
                    setState(() {
                      errorMessage = '';
                    });
                  }
                },
              ),
            ),
            _errorText(errorMessage: errorMessage),
            SizedBox(
              height: 56,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  formKey.currentState?.validate();
                  if (errorMessage.isEmpty) {
                    // qayergadir o'tish
                    print('ok');
                  } else {
                    print('invalid');
                  }
                },
                style: buildButtonStyle(),
                child: buttonChildText(),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _CustomContainer extends StatelessWidget {
  final Widget child;
  const _CustomContainer({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 56,
      alignment: Alignment.center,
      margin: _marginHeight(context),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: _customDecoration(),
      child: child,
    );
  }

  BoxDecoration _customDecoration() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      border: Border.all(color: Colors.redAccent),
    );
  }

  EdgeInsets _marginHeight(BuildContext context) {
    return EdgeInsets.only(
        top: 12, bottom: MediaQuery.of(context).size.height * 0.12);
  }
}

Align _errorText({required String errorMessage}) {
  return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        errorMessage,
        style: const TextStyle(color: Colors.redAccent),
      ));
}

Text buildTitleText() {
  return const Text(
    'email',
    style: TextStyle(fontSize: 16),
  ).tr();
}

Text buttonChildText() {
  return const Text(
    'sendOTPCode',
    style: TextStyle(
        fontSize: 16, fontWeight: FontWeight.w700, color: Colors.white),
  ).tr();
}

ButtonStyle buildButtonStyle() {
  return ButtonStyle(
    shape: MaterialStateProperty.all(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
    backgroundColor: MaterialStateProperty.all(Colors.grey.shade900),
  );
}
