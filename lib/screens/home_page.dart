import 'package:blobs/blobs.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ThemeData().scaffoldBackgroundColor,
        elevation: 0.0,
        title: Text(
          '# 30 Days Of Flutter Challenge',
          style: TextStyle(
            color: Colors.blue,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DayCard(
                    day: 1,
                  ),
                  DayCard(
                    day: 2,
                  ),
                  DayCard(
                    day: 3,
                  ),
                  DayCard(
                    day: 4,
                  ),
                  DayCard(
                    day: 5,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DayCard(
                    day: 6,
                  ),
                  DayCard(
                    day: 7,
                  ),
                  DayCard(
                    day: 8,
                  ),
                  DayCard(
                    day: 9,
                  ),
                  DayCard(
                    day: 10,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DayCard(day: 11),
                  DayCard(day: 12),
                  DayCard(day: 13),
                  DayCard(day: 14),
                  DayCard(day: 15),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DayCard(
                    day: 16,
                  ),
                  DayCard(
                    day: 17,
                  ),
                  DayCard(
                    day: 18,
                  ),
                  DayCard(
                    day: 19,
                  ),
                  DayCard(
                    day: 20,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DayCard(
                    day: 21,
                  ),
                  DayCard(
                    day: 22,
                  ),
                  DayCard(
                    day: 23,
                  ),
                  DayCard(
                    day: 24,
                  ),
                  DayCard(
                    day: 25,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DayCard(
                    day: 26,
                  ),
                  DayCard(
                    day: 27,
                  ),
                  DayCard(
                    day: 28,
                  ),
                  DayCard(
                    day: 29,
                  ),
                  DayCard(
                    day: 30,
                  ),
                ],
              ),
              Text('Marco Leonardini'),
              Text('@leonardini07'),
              SizedBox(height: 12.0),
              Text('Inspired in @faridaelchuzade'),
            ],
          ),
        ),
      ),
    );
  }
}

final kColors = [Colors.blue, Colors.blue[800], Colors.blue[200]];

class DayCard extends StatelessWidget {
  final int day;

  const DayCard({
    Key key,
    @required this.day,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          child: Center(
            child: Material(
              child: Padding(
                padding: const EdgeInsets.all(26.0),
                child: Text(
                  'here',
                ),
              ),
            ),
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.all(12.0),
        width: 90,
        height: 120,
        child: Column(
          children: [
            Text(
              'Day: $day',
              style: TextStyle(
                fontFamily: 'BadUnicornDemoRegular',
                fontSize: 26.0,
                fontWeight: FontWeight.w100,
              ),
            ),
            SizedBox(height: 8.0),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: Blob.random(
                  minGrowth: 8,
                  edgesCount: 8,
                  size: 52,
                  styles: BlobStyles(
                    color: kColors[day % 3],
                  ),
                ),
              ),
            ),
            SizedBox(height: 8.0),
          ],
        ),
      ),
    );
  }
}
