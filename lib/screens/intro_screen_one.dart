// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';


class IntroPage1 extends StatefulWidget {
  const IntroPage1({Key? key}) : super(key: key);

  @override
  _IntroPage1State createState() => _IntroPage1State();
}

class _IntroPage1State extends State<IntroPage1> {
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
                'I want to learn . . .',
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
      body: GridView.count(
        // This widget displays items in a 2-D-array of columns and rows
        crossAxisCount: 2,
        padding: const EdgeInsets.all(30),
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        children: [
          InkWell(
              onTap: () {
              // ignore: avoid_print
              print('You are tapped');},
            child: Container(
                padding: const EdgeInsets.only(top: 16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                      image: const AssetImage('assets/images/digest2.JPG'),
                      fit: BoxFit.cover,
                    )),
                child: const Text(
                  'The Digestive System',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.center,
                )),
          ),
          InkWell(
              onTap: () {
              // ignore: avoid_print
              print('You are tapped');},
            child: Container(
              padding: const EdgeInsets.only(top: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                    image: AssetImage('assets/images/immune2.JPG'),
                    fit: BoxFit.cover),
              ),
              child: const Text(
                'The Immune System',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          InkWell(
              onTap: () {
              // ignore: avoid_print
              print('You are tapped');},
            child: Container(
              padding: const EdgeInsets.only(top: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                    image: AssetImage('assets/images/urine2.JPG'),
                    fit: BoxFit.cover),
              ),
              child: const Text(
                'The Urinary System',
                style: const TextStyle(
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          InkWell(
            onTap: (() {
              // ignore: avoid_print
              print('You are tapped');
            }),
            child: Container(
              padding: const EdgeInsets.only(top: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                    image: AssetImage('assets/images/cardio.jpg'),
                    fit: BoxFit.cover),
              ),
              child: const Text(
                'The Cardiovascular System',
                style: const TextStyle(
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              // ignore: avoid_print
              print('You are tapped');},
            child: Container(
              padding: const EdgeInsets.only(top: 14),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                    image: AssetImage('assets/images/nerve.jpg'),
                    fit: BoxFit.cover),
              ),
              child: const Text(
                'The Nervous System',
                style: const TextStyle(
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
