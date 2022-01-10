import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:news_app/main_navigation.dart';
import '../../../../services/auth_firebase_service.dart';
import 'create_button.dart';
import 'custom_container_for_forms.dart';
import 'custom_input_decoration.dart';
import 'default_snackbar.dart';
import 'error_text.dart';

class FormFields extends StatefulWidget {
  FormFields({Key? key}) : super(key: key);

  @override
  State<FormFields> createState() => _FormFieldsState();
}

class _FormFieldsState extends State<FormFields> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();

  final auth = AuthFirebaseService();
  bool passError = false;
  bool nameError = false;
  bool emailError = false;

  String? errorText;

  bool _showPassword = false;

  void signinUserEmail() async {
    final user = await auth.signUpUserEmail(
        _emailController.text, _passwordController.text);
    if (user is UserCredential) {
      Navigator.popAndPushNamed(context, MainNavigationRouteNames.home);
    } else {
      defaultSnackBar(user.toString(), context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          nameFormField(),
          emailFormField(),
          passwordFormField(context),
          ErrorText(errorText: errorText),
          CreateButton(
            func: _func,
          ),
        ],
      ),
    );
  }

  void _func() {
    final isValid = _formKey.currentState!.validate();

    if (isValid) {
      _formKey.currentState!.setState(() {});
      if (!passError && !emailError & !nameError) {
        setState(() {
          signinUserEmail();
        });
        errorText = null;
      } else {
        print('error');
      }
    } else {
      print('error');
    }
  }

  CustomContainer passwordFormField(context) {
    return CustomContainer(
      titleForm: 'Password',
      child: TextFormField(
        controller: _passwordController,
        validator: (value) {
          if (value!.isEmpty) {
            setState(() {
              errorText = passError ? 'Fill in the fields!' : null;
            });
            passError = true;
          } else if (value.length < 8) {
            setState(() {
              passError = true;
              errorText = passError
                  ? 'The number of password characters must be at least 8!'
                  : null;
            });
          } else {
            setState(() {
              passError = false;
            });
          }
        },
        decoration: customPasswordInputDecoration(passError, 'Your password'),
        obscureText: !_showPassword,
      ),
    );
  }

  CustomContainer emailFormField() {
    return CustomContainer(
      titleForm: 'Email',
      child: TextFormField(
        controller: _emailController,
        validator: (value) {
          if (value!.isEmpty) {
            setState(() {
              errorText = emailError ? 'Fill in the fields!' : null;
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
      child: TextFormField(
        controller: _nameController,
        validator: (value) {
          if (value!.isEmpty) {
            nameError = true;
            setState(() {
              errorText = nameError ? 'Fill in the fields!' : null;
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

  InputDecoration customPasswordInputDecoration(bool isError, String hintText) {
    return InputDecoration(
      contentPadding: const EdgeInsets.symmetric(horizontal: 18, vertical: 17),
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
}
