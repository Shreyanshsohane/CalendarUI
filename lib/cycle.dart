import 'package:flutter/material.dart';
import 'package:intern_project/Widget/Mood.dart';
import 'package:intern_project/Widget/Symptoms.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:flutter_emoji/flutter_emoji.dart';

class cycle extends StatefulWidget {
  const cycle({super.key});
  @override
  State<cycle> createState() => _cycleState();
}

class _cycleState extends State<cycle> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Container(
          alignment: Alignment.topCenter,
          padding: EdgeInsets.all(20),
          child: Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
                color: Color.fromARGB(246, 205, 215, 245),
                borderRadius: BorderRadius.circular(100)),
            child: Padding(
              padding: const EdgeInsets.only(top: 36),
              child: Column(
                children: [
                  Text(
                    'period:',
                    style: TextStyle(fontSize: 3.h),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Day 4',
                    style: TextStyle(fontSize: 32),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Medium chance to \n     get pregnant',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        Container(
          child: SfCalendar(
            view: CalendarView.month,
            headerStyle: CalendarHeaderStyle(textAlign: TextAlign.center),
            cellBorderColor: Colors.transparent,
            showNavigationArrow: true,
          ),
        ),
        const Divider(
          color: Colors.grey,
          height: 25,
          thickness: 2,
          indent: 35,
          endIndent: 35,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8, right: 8, top: 15),
          child: Container(
            decoration: BoxDecoration(
                color: Color.fromARGB(248, 212, 255, 255),
                borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.red,
                      radius: 5,
                    ),
                    SizedBox(
                      width: 4.w,
                    ),
                    Text(
                      'Periods',
                      style: TextStyle(
                        fontSize: 2.h,
                      ),
                    ),
                    SizedBox(
                      width: 28.w,
                    ),
                    CircleAvatar(
                      radius: 5,
                      backgroundColor: Colors.blue.shade900,
                    ),
                    SizedBox(
                      width: 4.w,
                    ),
                    Text(
                      'Ovulation',
                      style: TextStyle(
                        fontSize: 2.h,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 14,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 5,
                          backgroundColor: Colors.blue,
                        ),
                        SizedBox(
                          width: 4.w,
                        ),
                        Text(
                          'Expected period',
                          style: TextStyle(fontSize: 2.h),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 13.8.w,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 5,
                        ),
                        SizedBox(
                          width: 4.w,
                        ),
                        Text(
                          'Fertile',
                          style: TextStyle(
                            fontSize: 2.h,
                          ),
                        ),
                        // SizedBox(width: 65),
                      ],
                    )
                  ],
                ),
              ]),
            ),
          ),
        ),
        SizedBox(height: 25),
        Mood(),
        SYmptoms(),
      ]),
    );
  }
}
