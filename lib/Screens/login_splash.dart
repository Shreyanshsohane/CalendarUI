import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intern_project/Screens/Login.dart';
import 'package:lottie/lottie.dart';

class LoginSplash extends StatelessWidget {
  const LoginSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Lottie.network('https://assets4.lottiefiles.com/packages/lf20_dn6rwtwl.json'),
      splashIconSize: 250,
      duration: 2500,
      backgroundColor: Colors.black,
      nextScreen: const LoginPage(),
    );
  }
}
