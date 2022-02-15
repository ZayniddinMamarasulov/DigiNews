import 'package:flutter/material.dart';
import 'package:news_app/presentation/screens/register_and_login/login_page/components/custom_container_for_forms.dart';
import 'package:news_app/presentation/screens/register_and_login/login_page/components/custom_input_decoration.dart';

class FormFieldPages extends StatefulWidget {
  const FormFieldPages({Key? key}) : super(key: key);

  @override
  _FormFieldPagesState createState() => _FormFieldPagesState();
}

class _FormFieldPagesState extends State<FormFieldPages> {
  final _formKey = GlobalKey<FormState>();

  bool passError = false;
  bool nameError = false;
  bool emailError = false;
  bool textError = false;

  String? errorText;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          nameFormField(),
          emailFormField(),
          // textFormField(),
          //ErrorText(errorText: errorText),
          // CreateButton(
          //   func: _func,
          // ),
        ],
      ),
    );
  }

  // void _func() {
  //   final isValid = _formKey.currentState!.validate();
  //
  //   if (isValid) {
  //     _formKey.currentState!.setState(() {});
  //     if (!passError && !emailError & !nameError) {
  //       Navigator.of(context).pushNamed(MainNavigationRouteNames.login);
  //       errorText = null;
  //     } else {
  //       print('error');
  //     }
  //   } else {
  //     print('error');
  //   }
  // }
  CustomContainer emailFormField() {
    return CustomContainer(
      titleForm: 'Email',
      isError: emailError,
      child: TextFormField(
        style: const TextStyle(color: Colors.black),
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

  CustomContainer nameFormField() {
    return CustomContainer(
      titleForm: 'Name',
      isError: nameError,
      child: TextFormField(
        style: const TextStyle(color: Colors.black),
        validator: (value) {
          if (value!.isEmpty) {
            nameError = true;
            setState(() {
              errorText = nameError ? 'Maydonlarni to\'ldiring!' : null;
            });
          } else {
            setState(() {
              nameError = false;
            });
          }
        },
        decoration: customInputDecoration(nameError, 'Your name'),
      ),
    );
  }
}
