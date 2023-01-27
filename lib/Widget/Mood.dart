import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CardItem {
  final Icon;
  final String title;
  CardItem({
    required this.Icon,
    required this.title,
  });
}

List<CardItem> items = [
    CardItem(Icon: Icons.emoji_emotions_outlined, title: 'Calm'),
    CardItem(Icon: Icons.emoji_emotions_outlined, title: 'Sad'),
    CardItem(Icon: Icons.emoji_emotions_outlined, title: 'Happy'),
    CardItem(Icon: Icons.emoji_emotions_outlined, title: 'Nice'),
    CardItem(Icon: Icons.emoji_emotions_outlined, title: 'Energetic'),
  ];

SingleChildScrollView Mood() {
    return SingleChildScrollView(
        child: Column(
          children: [
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
                color: Colors.white,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  separatorBuilder: (context, _) => SizedBox(
                      //width: ,
                      ),
                  itemBuilder: (context, index) =>
                      BuildCard(item: items[index]),
                ),
              ),
            ),
          ],
        ),
      );
  }
  Widget BuildCard({
    required CardItem item,
  }) =>
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: Container(
                height: 2.h,
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
