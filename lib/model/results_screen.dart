
import 'package:flutter/material.dart';
import 'package:masteranatomy/data/constants.dart';
import 'package:masteranatomy/pages/home_page.dart';
import 'package:masteranatomy/screens/cardio_screen.dart';

// ignore: must_be_immutable
class ResultScreen extends StatefulWidget {
  int score;
  ResultScreen(this.score, {Key? key}) : super(key: key);

  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7FDFA),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            width: double.infinity,
            child: Text(
              "Congratulations",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: kSmallTextColor,
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 45.0,
          ),
          const Text(
            "You Score is:",
            style: TextStyle(color: kSmallTextColor, fontSize: 34.0),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Text(
            // Displays the quiz score.
            "${widget.score}",
            style: const TextStyle(
              color: Colors.orange,
              fontSize: 85.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 100.0,
          ),
          MaterialButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CardioQuiz(),
                  ));
            },
            shape: const StadiumBorder(),
            color: kHeaderColor,
            padding: const EdgeInsets.all(18.0),
            child: const Text(
              "Retake the quiz",
              style:  TextStyle(color: Colors.white),
            ),
          ),
           const SizedBox(height: 40),
                  MaterialButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ));
            },
            shape: const StadiumBorder(),
            color: Colors.redAccent,
            padding: const EdgeInsets.all(18.0),
            child: const Text(
              "Return to Home Page",
              style: TextStyle(color: Colors.white),
            ),
          ),

        ],
      ),
    );
  }
}
