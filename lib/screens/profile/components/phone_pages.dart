import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:news_app/screens/register_and_login/password_recovery/components/form_for_email.dart';
import 'package:news_app/screens/register_and_login/password_recovery/components/form_for_phone_number.dart';

class PhonePages extends StatefulWidget {
  const PhonePages({Key? key}) : super(key: key);

  @override
  _PhonePagesState createState() => _PhonePagesState();
}

class _PhonePagesState extends State<PhonePages> {
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
    return  Padding(
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
                  print(value);
                },
                onInputValidated: (bool value) {
                  setState(() {
                    value
                        ? errorMessage = ''
                        : errorMessage = '- Invalid phone number';
                  });
                  print(value);
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
            //errorText(errorMessage: errorMessage),
          ],
        ),
      ),
    );
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

  EdgeInsets marginHeight(BuildContext context) {
    return EdgeInsets.only(
        top: 12, bottom: MediaQuery.of(context).size.height * 0.02);
  }
}