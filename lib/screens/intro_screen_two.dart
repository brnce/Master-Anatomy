import 'package:flutter/material.dart';
import 'package:masteranatomy/data/constants.dart';

class IntroPage2 extends StatelessWidget {
  const IntroPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE2F8ED),
      appBar: AppBar(
        backgroundColor: const Color(0xFFE2F8ED),
        elevation: 0,
        automaticallyImplyLeading: false,
        toolbarHeight: 100,
        title: Container(
          padding: const EdgeInsets.only(top: 16),
          child: Column(
            children: const [
              Text(
                'So that I can ...',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Choose as many as you wish',
                  style: TextStyle(
                      color: Colors.black45,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
        actions: const [Padding(padding: EdgeInsets.all(10))],
      ),
      body: SafeArea(
        // Create a list of widgets arranged linearly.
          child: ListView(
              // Does not allow the user to scroll.
              physics: const NeverScrollableScrollPhysics(),
              children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: InkWell(
                onTap: () {
                  // ignore: avoid_print
                  print('You are tapped');
                },
                child: Container(
                  margin: const EdgeInsets.only(top: 150),
                  height: 100,
                  width: 100,
                  color: kHeaderColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.text_increase_rounded,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'To study for exams',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: InkWell(
                onTap: () {
                  // ignore: avoid_print
                  print('You are tapped');
                },
                child: Container(
                  height: 100,
                  width: 200,
                  color: kHeaderColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.psychology_outlined,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          '''Expand my knowledge and understanding
          of the human body and clinical practice''',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: InkWell(
                onTap: () {
                  //
                  // ignore: avoid_print
                  print('You are tapped');
                },
                child: Container(
                  height: 100,
                  width: 100,
                  color: kHeaderColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.school_rounded,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(7),
                        child: Text(
                          '''For educational advancement and to understand 
          the life system you are a part of and support''',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ])),
    );
  }
}
