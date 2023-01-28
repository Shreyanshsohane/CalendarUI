import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class ForgetPhoneScreen extends StatelessWidget {
  const ForgetPhoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.fromLTRB(20, 60, 20, 20),
            child: Column(
              children: [
                Center(
                  child: Image(
                      image: NetworkImage(
                          'https://tse3.mm.bing.net/th?id=OIP.GFk_XJjBbEZmFSp9gUuj6gHaGY&pid=Api&P=0')),
                ),
                Text(
                  'Forget password',
                  style: TextStyle(fontSize: 44, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Enter the otp send at the your email address',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: 30),
                OtpTextField(
                  numberOfFields: 6,
                  fillColor: Colors.black.withOpacity(0.1),
                  filled: true,
                ),
                SizedBox(height: 30),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.black),
                    onPressed: () {},
                    child: Text(
                      'Next',
                      style: TextStyle(fontSize: 32),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
