import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:intern_project/Screens/Login.dart';

class MainDrawer extends StatelessWidget {
  MainDrawer({super.key});
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  Future<void> SignOut() async {
    await _firebaseAuth.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      //backgroundColor: Colors.black,
      child: Column(children: <Widget>[
        Container(
          width: double.infinity,
          padding: EdgeInsets.all(20),
          color: Colors.black,
          child: Center(
            child: Column(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  margin: EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: NetworkImage(
                          'https://tse4.mm.bing.net/th?id=OIP.z4no5tqp2ryBdMMD5NU9OgHaEv&pid=Api&P=0',
                        ),
                        fit: BoxFit.fill),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Welcome',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  'User',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              ListTile(
                  leading: Icon(Icons.login_sharp),
                  title: const Text(
                    'Logout',
                    style: TextStyle(fontSize: 19),
                  ),
                  onTap: () {
                    SignOut();
                    Navigator.of(context).pop();
                    Navigator.of(context).pop();
                  })
            ],
          ),
        ),
      ]),
    );
  }
}
