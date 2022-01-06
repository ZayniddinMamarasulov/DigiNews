import 'package:flutter/material.dart';
import 'package:news_app/ui/utils/button_style.dart';

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
            const Text(
              'Email',
              style: TextStyle(fontSize: 16),
            ),
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
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  errorMessage,
                  style: const TextStyle(color: Colors.redAccent),
                )),
            SizedBox(
              height: 56,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  formKey.currentState?.validate();
                  if (errorMessage.isEmpty) {
                    debugPrint('ok');
                  } else {
                    debugPrint('invalid');
                  }
                },
                style: buildButtonStyle(),
                child: const Text(
                  'Send OTP Code',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
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
      margin: EdgeInsets.only(
          top: 12, bottom: MediaQuery.of(context).size.height * 0.12),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.redAccent),
      ),
      child: child,
    );
  }
}
