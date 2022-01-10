import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class PhoneNumberForm extends StatefulWidget {
  const PhoneNumberForm({Key? key}) : super(key: key);

  @override
  _PhoneNumberFormState createState() => _PhoneNumberFormState();
}

class _PhoneNumberFormState extends State<PhoneNumberForm> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController controller = TextEditingController();
  String initialCountry = 'UZ';
  PhoneNumber number = PhoneNumber(isoCode: 'UZ');
  String errorMessage = '';

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

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
            Container(
              width: double.infinity,
              height: 56,
              margin: marginHeight(context),
              padding: const EdgeInsets.symmetric(horizontal: 8),
              decoration: _customDecoration(),
              child: InternationalPhoneNumberInput(
                onInputChanged: (PhoneNumber value) {
                  debugPrint(value.toString());
                },
                onInputValidated: (bool value) {
                  setState(() {
                    value
                        ? errorMessage = ''
                        : errorMessage = '- Invalid phone number';
                  });
                  debugPrint(value.toString());
                },
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                  signed: true,
                ),
                autoFocus: true,
                selectorTextStyle: TextStyle(color: Colors.grey.shade600),
                initialValue: number,
                textFieldController: controller,
                formatInput: true,
                errorMessage: null,
                validator: (value) {},
                autoValidateMode: AutovalidateMode.disabled,
                inputDecoration: InputDecoration(
                  hintText: 'phone number',
                  hintStyle: TextStyle(color: Colors.grey.shade400),
                  border: InputBorder.none,
                ),
              ),
            ),
            errorText(errorMessage: errorMessage),
            SizedBox(
              height: 56,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  formKey.currentState?.validate();
                  if (errorMessage.isEmpty) {
                    // qayergadir o'tish
                    debugPrint('ok');
                  } else {
                    debugPrint('invalid');
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

Align errorText({required String errorMessage}) {
  return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        errorMessage,
        style: const TextStyle(color: Colors.redAccent),
      ));
}

EdgeInsets marginHeight(BuildContext context) {
  return EdgeInsets.only(
      top: 12, bottom: MediaQuery.of(context).size.height * 0.2);
}

Text buildTitleText() {
  return const Text(
    'Phone Number',
    style: TextStyle(fontSize: 16),
  );
}

BoxDecoration _customDecoration() {
  return BoxDecoration(
    borderRadius: BorderRadius.circular(12),
    border: Border.all(color: Colors.redAccent),
  );
}

Text buttonChildText() {
  return const Text(
    'Send OTP Code',
    style: TextStyle(
        fontSize: 16, fontWeight: FontWeight.w700, color: Colors.white),
  );
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
