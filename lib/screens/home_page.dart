import 'package:blobs/blobs.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
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
      body: Center(
        child: Container(
          width: 450,
          alignment: Alignment.center,
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                Wrap(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children:
                      List.generate(30, (index) => DayCard(day: index + 1))
                          .toList(),
                ),
                SizedBox(height: 12),
                Text('Marco Leonardini'),
                Text('@leonardini07'),
                SizedBox(height: 8.0),
                Text('Inspired in @faridaelchuzade'),
                SizedBox(height: 12),
              ],
            ),
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
    final date = DateTime.now().day;
    double opacity = 1;
    if (day > date) opacity = 0.5;
    if (day < date) opacity = 0.30;
    return Opacity(
      opacity: opacity,
      child: GestureDetector(
        onTap: () {
          showDialog(
            context: context,
            builder: (context) => Center(
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
      ),
    );
  }
}
