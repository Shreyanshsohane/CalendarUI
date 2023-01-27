import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Symptoms {
  final Icon;
  final String title;
  Symptoms({
    required this.Icon,
    required this.title,
  });
}

List<Symptoms> Items = [
    Symptoms(Icon: Icons.thumb_up, title: 'All Good'),
    Symptoms(Icon: Icons.emoji_emotions_outlined, title: 'Sad'),
    Symptoms(Icon: Icons.emoji_emotions_outlined, title: 'Happy'),
    Symptoms(Icon: Icons.emoji_emotions_outlined, title: 'Nice'),
    Symptoms(Icon: Icons.emoji_emotions_outlined, title: 'Energetic'),
  ];

Widget SymptomsCard({
    required Symptoms item,
  }) =>
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: Container(
                height: 4.h,
                width: 22.w,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black, //color of border
                      width: 1.5, //width of border
                    ),
                    borderRadius: BorderRadius.circular(5)),
                child: Icon(
                  item.Icon,
                  size: 7.h,
                ),
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              item.title,
              style: TextStyle(
                fontSize: 2.h,
              ),
            )
          ],
        ),
      );



SingleChildScrollView SYmptoms() {
    return SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 35),
              child: Container(
                alignment: Alignment.topLeft,
                child: Text(
                  'Symptoms',
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
                color: Colors.white,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  separatorBuilder: (context, _) => SizedBox(
                      //width: ,
                      ),
                  itemBuilder: (context, index) =>
                      SymptomsCard(item: Items[index]),
                ),
              ),
            ),
          ],
        ),
      );
  }      