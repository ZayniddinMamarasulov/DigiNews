import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:news_app/screens/register_and_login/password_recovery/components/form_for_phone_number.dart';


class PhoneNumberPage extends StatefulWidget {
  @override
  _PhoneNumberPageState createState() => _PhoneNumberPageState();
}

class _PhoneNumberPageState extends State<PhoneNumberPage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController controller = TextEditingController();
  String initialCountry = 'NG';
  PhoneNumber number = PhoneNumber(isoCode: 'NG');
  String errorMessage = '';

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 56,
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

            SizedBox(height: 8,),

            Text("Bio",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w400),),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
              child: Container(
                  height: 104,
                  width: 327,
                  color: Colors.grey[100],
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                    child: Text("I am a passionate writer, currently\n working as a Content Creator at \n FizzBuzz. Based in Prague.",
                      style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w400),),
                  )
              ),
            ),



            // ElevatedButton(
            //   onPressed: () {
            //     formKey.currentState?.validate();
            //   },
            //   child: Text('Validate'),
            // ),
            // ElevatedButton(
            //   onPressed: () {
            //     getPhoneNumber('+15417543010');
            //   },
            //   child: Text('Update'),
            // ),
            // ElevatedButton(
            //   onPressed: () {
            //     formKey.currentState?.save();
            //   },
            //   child: Text('Save'),
            // ),
          ],
        ),
      ),
    );
  }

  void getPhoneNumber(String phoneNumber) async {
    PhoneNumber number = await PhoneNumber.getRegionInfoFromPhoneNumber(phoneNumber, 'US');
    setState(() {
      this.number = number;
    });
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  BoxDecoration _customDecoration() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      border: Border.all(color: Colors.redAccent),
    );
  }

}
