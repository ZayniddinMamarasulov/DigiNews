import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:news_app/ui/screens/register_and_login/otp_authentication/components/custom_container_for_forms.dart';
import 'package:news_app/ui/screens/register_and_login/pick_topics/pick_topics_page.dart';

import 'custom_input_decoration.dart';

class EnterCodeForm extends StatefulWidget {
  const EnterCodeForm({
    Key? key,
  }) : super(key: key);

  @override
  State<EnterCodeForm> createState() => _EnterCodeFormState();
}

class _EnterCodeFormState extends State<EnterCodeForm> {
  late FocusNode pin2FocusNode;
  late FocusNode pin3FocusNode;
  late FocusNode pin4FocusNode;

  @override
  void initState() {
    super.initState();

    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
  }

  @override
  void dispose() {
    pin2FocusNode.dispose();
    pin3FocusNode.dispose();
    pin4FocusNode.dispose();

    super.dispose();
  }

  void nextForm({required String value, required FocusNode focusNode}) {
    if (value.length == 1) {
      focusNode.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          formForCode1(),
          formForCode2(),
          formForCode3(),
          formForCode4(),
        ],
      ),
    );
  }

  CustomContainerForCode formForCode1() {
    return CustomContainerForCode(
      child: TextField(
        autofocus: true,
        keyboardType: TextInputType.number,
        cursorColor: Colors.redAccent,
        cursorWidth: 3,
        cursorHeight: 24,
        textAlign: TextAlign.center,
        decoration: customInputDecoration(),
        style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
        ],
        onChanged: (value) {
          nextForm(value: value, focusNode: pin2FocusNode);
        },
      ),
    );
  }

  CustomContainerForCode formForCode2() {
    return CustomContainerForCode(
      child: TextField(
        focusNode: pin2FocusNode,
        keyboardType: TextInputType.number,
        cursorColor: Colors.redAccent,
        cursorWidth: 3,
        cursorHeight: 24,
        textAlign: TextAlign.center,
        decoration: customInputDecoration(),
        style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
        ],
        onChanged: (value) {
          nextForm(value: value, focusNode: pin3FocusNode);
        },
      ),
    );
  }

  CustomContainerForCode formForCode3() {
    return CustomContainerForCode(
      child: TextField(
        focusNode: pin3FocusNode,
        keyboardType: TextInputType.number,
        cursorColor: Colors.redAccent,
        cursorWidth: 3,
        cursorHeight: 24,
        textAlign: TextAlign.center,
        decoration: customInputDecoration(),
        style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
        ],
        onChanged: (value) {
          nextForm(value: value, focusNode: pin4FocusNode);
        },
      ),
    );
  }

  CustomContainerForCode formForCode4() {
    return CustomContainerForCode(
      child: TextField(
        focusNode: pin4FocusNode,
        keyboardType: TextInputType.number,
        cursorColor: Colors.redAccent,
        cursorWidth: 3,
        cursorHeight: 24,
        textAlign: TextAlign.center,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
        ],
        decoration: customInputDecoration(),
        style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
        onChanged: (value) {
          if (value.length == 1) {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => PickTopicsPage()));
            print('ok');
          }
        },
      ),
    );
  }
}
