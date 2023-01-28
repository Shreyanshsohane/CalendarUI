import 'package:flutter/material.dart';

class ForgetEmailScreen extends StatelessWidget {
  const ForgetEmailScreen({super.key});

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
                  'Enter your  E-mail adress below',
                  style: TextStyle(fontSize: 28),
                ),
                SizedBox(height: 30),
                Form(
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                            label: Text('E-mail'),
                            hintText: 'E-mail',
                            prefixIcon: Icon(Icons.mail_outline_rounded),
                            enabledBorder: OutlineInputBorder()),
                      ),
                      SizedBox(height: 30),
                      Container(
                        color: Colors.black,
                        child: SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            style:
                                ElevatedButton.styleFrom(primary: Colors.black),
                            onPressed: () {},
                            child: Text('Next',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white)),
                          ),
                        ),
                      ),
                    ],
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
