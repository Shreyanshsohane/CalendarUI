import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class cycle extends StatefulWidget {
  const cycle({super.key});

  @override
  State<cycle> createState() => _cycleState();
}

class CardItem {
  final String urlImage;
  final String title;
  CardItem({
    required this.urlImage,
    required this.title,
  });
}

class _cycleState extends State<cycle> {
  List<CardItem> items = [
    CardItem(
        urlImage:
            'https://tse3.mm.bing.net/th?id=OIP.CBGKfEl9mFQ7Yp7qzSKpZQHaHa&pid=Api&P=0',
        title: 'Calm'),
    CardItem(
        urlImage:
            'https://tse3.mm.bing.net/th?id=OIP.CBGKfEl9mFQ7Yp7qzSKpZQHaHa&pid=Api&P=0',
        title: 'Calm'),
    CardItem(
        urlImage:
            'https://tse3.mm.bing.net/th?id=OIP.CBGKfEl9mFQ7Yp7qzSKpZQHaHa&pid=Api&P=0',
        title: 'Calm'),
    CardItem(
        urlImage:
            'https://tse3.mm.bing.net/th?id=OIP.CBGKfEl9mFQ7Yp7qzSKpZQHaHa&pid=Api&P=0',
        title: 'Calm'),
    CardItem(
        urlImage:
            'https://tse3.mm.bing.net/th?id=OIP.CBGKfEl9mFQ7Yp7qzSKpZQHaHa&pid=Api&P=0',
        title: 'Calm'),
    CardItem(
        urlImage:
            'https://tse3.mm.bing.net/th?id=OIP.CBGKfEl9mFQ7Yp7qzSKpZQHaHa&pid=Api&P=0',
        title: 'Calm'),
    CardItem(
        urlImage:
            'https://tse3.mm.bing.net/th?id=OIP.CBGKfEl9mFQ7Yp7qzSKpZQHaHa&pid=Api&P=0',
        title: 'Calm'),
    CardItem(
        urlImage:
            'https://tse3.mm.bing.net/th?id=OIP.CBGKfEl9mFQ7Yp7qzSKpZQHaHa&pid=Api&P=0',
        title: 'Calm'),
  ];

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
                borderRadius: BorderRadius.circular(100)
                //more than 50% of width makes circle
                ),
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
          padding: const EdgeInsets.only(left: 35, right: 35, top: 15),
          child: Container(
            //height: double.infinity,
            //width: double.infinity,

            decoration:
                BoxDecoration(color: Color.fromARGB(248, 212, 255, 255)),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            CircleAvatar(
                              backgroundColor: Colors.red,
                              radius: 5,
                            ),
                            Text(
                              'Periods',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            //SizedBox(width: ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              radius: 5,
                              backgroundColor: Colors.blue.shade900,
                            ),
                            Text(
                              'Ovulation',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            CircleAvatar(
                              radius: 5,
                              backgroundColor: Colors.blue,
                            ),
                            Text(
                              'Expected period',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            CircleAvatar(
                              backgroundColor: Colors.white70,
                              radius: 5,
                            ),
                            Text(
                              'Fertile',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
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
        Padding(
          padding: const EdgeInsets.only(left: 35),
          child: Container(
            alignment: Alignment.topLeft,
            child: Text(
              'Mood',
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.left,
            ),
          ),
        ),
        //SizedBox(height: 1),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            height: 120,
            color: Color.fromARGB(255, 230, 233, 234),
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: 8,
              separatorBuilder: (context, _) => SizedBox(
                  //width: ,
                  ),
              itemBuilder: (context, index) => BuildCard(item: items[index]),
            ),
          ),
        ),
      ]),
    );
  }

  Widget BuildCard({
    required CardItem item,
  }) =>
      Container(
        width: 100,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Expanded(
                child: Container(
                  height: 100,
                  width: 100,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.network(
                      item.urlImage,
                      fit: BoxFit.fill,
                      // fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                item.title,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      );
}
