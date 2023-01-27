import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intern_project/screens.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sizer/sizer.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarIconBrightness: Brightness.dark,
    statusBarBrightness: Brightness.dark,
    statusBarColor: Colors.white,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, screentype) {
      return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(visualDensity: VisualDensity.adaptivePlatformDensity),
        home: const MyHomePage(title: 'Flutter Demo Home Page'),
      );
    });
  }
}
