import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intern_project/cycle.dart';
import 'package:intern_project/log.dart';
import 'package:intern_project/timelog.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

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
            systemOverlayStyle: const SystemUiOverlayStyle(
                statusBarColor: Colors.white,
                statusBarBrightness: Brightness.light,
                statusBarIconBrightness: Brightness.dark),
            leading: const Icon(
              Icons.arrow_back,
              color: Colors.black87,
            ),
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
        ),
      ),
    );
  }
}
