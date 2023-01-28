import 'dart:developer';
import 'dart:ffi';

import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intern_project/Screens/cycle.dart';
import 'package:intern_project/Screens/log.dart';
import 'package:intern_project/Screens/timelog.dart';
import 'package:intern_project/Widget/main_Drawer.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            iconTheme: IconThemeData(color: Colors.black),
            systemOverlayStyle: const SystemUiOverlayStyle(
                statusBarColor: Colors.white,
                statusBarBrightness: Brightness.light,
                statusBarIconBrightness: Brightness.dark),
            backgroundColor: Colors.white,
            title: Text(
              'Prescription',
              style: TextStyle(fontSize: 2.8.h, color: Colors.black),
            ),
            bottom: TabBar(
              unselectedLabelColor: Colors.black,
              indicatorColor: Colors.blue,
              labelStyle: const TextStyle(fontSize: 30),
              labelColor: Colors.blue.shade900,
              tabs: [
                Tab(
                  child: Text(
                    'Cycle',
                    style:
                        TextStyle(fontSize: 2.h, fontWeight: FontWeight.w600),
                  ),
                ),
                Tab(
                  child: Text(
                    'Timelog',
                    style:
                        TextStyle(fontSize: 2.h, fontWeight: FontWeight.w600),
                  ),
                ),
                Tab(
                  child: Text(
                    'Log',
                    style:
                        TextStyle(fontSize: 2.h, fontWeight: FontWeight.w600),
                  ),
                )
              ],
            ),
          ),
          body: const TabBarView(children: [
            cycle(),
            timelog(),
            Log(),
          ]),
          drawer: MainDrawer(),
        ),
      ),
    );
  }
}
