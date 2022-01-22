import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:news_app/screens/doshboard_and_news_detail/home/components/phone_number.dart';
import 'package:news_app/screens/register_and_login/login_page/components/create_button.dart';
import 'package:news_app/screens/register_and_login/login_page/components/custom_container_for_forms.dart';
import 'package:news_app/screens/register_and_login/login_page/components/custom_input_decoration.dart';
import 'package:news_app/screens/register_and_login/login_page/components/error_text.dart';
import 'package:news_app/screens/register_and_login/login_page/components/forgot_password.dart';
import 'package:news_app/screens/register_and_login/password_recovery/components/form_for_phone_number.dart';

import '../../../../main_navigation.dart';
class EditFormFilds extends StatefulWidget {
  const EditFormFilds({Key? key}) : super(key: key);

  @override
  _EditFormFildsState createState() => _EditFormFildsState();
}

class _EditFormFildsState extends State<EditFormFilds> {
  final _formKey = GlobalKey<FormState>();

  bool passError = false;
  bool nameError = false;
  bool emailError = false;

  final TextEditingController controller = TextEditingController();
  final nameController=TextEditingController();

  PhoneNumber number = PhoneNumber(isoCode: 'UZ');

  String? errorText;
  String errorMessage = '';

  final _emailController = TextEditingController();
  bool _showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          nameFormFild(),
          emailFormField(),
          PhoneNumberPage()
         // phoneNumber(),
          //ErrorText(errorText: errorText),
        ],
      ),
    );
  }

  CustomContainer nameFormFild(){
    return CustomContainer(
        titleForm: "Name",
        isError: nameError,
        child: TextFormField(
          controller: nameController,
          validator: (value){
            if (value!.length < 8) {
              setState(() {
                passError = true;
                errorText = passError
                    ? 'Parol belgilari soni kamida 8 ta bo\'lishi kerak!'
                    : null;
              });
            }else {
              setState(() {
                passError = false;
              });
            }
          },
          decoration: customInputDecoration(emailError, 'Your name'),
        ),
    );
  }


  CustomContainer emailFormField() {
    return CustomContainer(
      titleForm: 'Email',
      isError: emailError,
      child: TextFormField(
        controller: _emailController,
        validator: (value) {
          if (value!.isEmpty) {
            setState(() {
              errorText = emailError ? 'Maydonlarni to\'ldiring!' : null;
            });
            emailError = true;
          } else if (!(RegExp('@').hasMatch(value))) {
            setState(() {
              emailError = true;
              errorText = null;
            });
          } else {
            setState(() {
              emailError = false;
            });
          }
        },
        decoration: customInputDecoration(emailError, 'Your email address'),
      ),
    );
  }

  InputDecoration customPasswordInputDecoration(bool isError, String hintText) {
    return InputDecoration(
      contentPadding: const EdgeInsets.symmetric(horizontal: 1, vertical: 1),
      suffixIcon: IconButton(
        onPressed: () {
          _toggleVisibility();
        },
        icon: Icon(_showPassword ? Icons.visibility : Icons.visibility_off),
      ),
      border: isError
          ? OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Colors.red),
      )
          : InputBorder.none,
      hintText: hintText,
      enabledBorder: isError
          ? OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Colors.red),
      )
          : InputBorder.none,
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide:
        BorderSide(color: (isError ? Colors.red : Colors.lightBlue)),
      ),
    );
  }

  void _toggleVisibility() {
    setState(() {
      _showPassword = !_showPassword;
    });
  }

  Widget phoneNumber(){
    return Column(
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
        Text("data")
      ],
    );
  }
  BoxDecoration _customDecoration() {
    return BoxDecoration(
      color: Colors.red,
      borderRadius: BorderRadius.circular(12),
      border: Border.all(color: Colors.redAccent),
    );
  }
  Text buildTitleText() {
    return const Text(
      'Phone Number',
      style: TextStyle(fontSize: 16),
    );
  }

}
