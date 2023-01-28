import 'package:intern_project/Screens/Login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:typicons_flutter/typicons_flutter.dart';

class SignUp_Page extends StatefulWidget {
  const SignUp_Page({super.key});

  @override
  State<SignUp_Page> createState() => _SignUp_PageState();
}

class _SignUp_PageState extends State<SignUp_Page> {
  //final _auth = FirebaseAuth.instance;
  /*
  String email = '';
  String password = '';
  String FullName = '';
  String PhoneNumber = '';
  */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              'https://tse1.mm.bing.net/th?id=OIP.OICHHPvx0P8OXvj0m_3GmAHaNK&pid=Api&P=0',
            ),
            fit: BoxFit.fill,
          ),
        ),
        child: SingleChildScrollView(
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Stack(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 35, top: 130),
                  child: Text(
                    'Create Account',
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.3,
                    right: 35,
                    left: 35,
                  ),
                  child: Column(
                    children: [
                      TextField(
                        onChanged: ((value) {
                          // FullName = value;
                        }),
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.person),
                            fillColor: Colors.white,
                            filled: true,
                            hintText: 'Full Name',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                      ),
                      SizedBox(height: 30),
                      TextField(
                        keyboardType: TextInputType.emailAddress,
                        onChanged: ((value) {
                          //  email = value;
                        }),
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.email),
                            fillColor: Colors.white,
                            filled: true,
                            hintText: 'E-Mail',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                      ),
                      SizedBox(height: 30),
                      TextField(
                        onChanged: (value) {
                          // PhoneNumber = value;
                        },
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.phone),
                            fillColor: Colors.white,
                            filled: true,
                            hintText: 'Phone No',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                      ),
                      SizedBox(height: 30),
                      TextField(
                        onChanged: (value) {
                          // password = value;
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.password),
                            fillColor: Colors.white,
                            filled: true,
                            hintText: 'Password',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                      ),
                      //SizedBox(height: 30),
                      SizedBox(height: 32),
                      /*
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: ((context) => LoginPage())));
                              },
                              child: Text(
                                'Sign in',
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    fontSize: 23,
                                    color: Colors.white),
                              )),
                        ],
                      ),
                      */
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.black,
                              side: BorderSide(width: 1600)),
                          onPressed: () async {
                            /*
                            try {
                              final newUser =
                                  await _auth.createUserWithEmailAndPassword(
                                email: email,
                                password: password,
                              );
                            } catch (e) {
                              print(e);
                            }
                            */
                          },
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                              fontSize: 23,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'OR',
                        style: TextStyle(fontSize: 22, color: Colors.white),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        child: SizedBox(
                          width: double.infinity,
                          height: 50,
                          child: ElevatedButton.icon(
                            icon: Icon(
                              Typicons.social_google_plus,
                              color: Colors.black,
                            ),
                            style: TextButton.styleFrom(
                                backgroundColor: Colors.white,
                                side: BorderSide(width: 2000)),
                            onPressed: () {},
                            label: Text(
                              'Sign-up with Google',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 6,
                          ),
                          Text(
                            'Already have an Account ?',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: ((context) => LoginPage())));
                            },
                            child: Text(
                              'login',
                              style: TextStyle(
                                color: Colors.orange.shade500,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
    ;
  }
}
