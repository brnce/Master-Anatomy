import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:masteranatomy/model/digest_screen.dart';
import 'package:masteranatomy/model/immune_screen.dart';
import 'package:masteranatomy/model/nerve_screen.dart';
import 'package:masteranatomy/model/urine_screen.dart';
import 'package:masteranatomy/pages/home_page.dart';
import 'package:masteranatomy/screens/cardio_screen.dart';

class QuizPage extends StatelessWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFEBEAE9),
        appBar: AppBar(
          backgroundColor: const Color(0xFF6DC395),
          elevation: 0,
          leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              color: Colors.white,
              onPressed: () => {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) =>  const HomePage(),))
                  }),
          toolbarHeight: 100,
          title: Column(
            children: const [
              Text(
                'Lets test your Knowledge',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ],
          ),
          actions: const [Padding(padding: EdgeInsets.all(10))],
        ),
        
        body: ListView(
          padding: const EdgeInsets.all(10),
          children: <Widget>[
              const Gap(100),
            GestureDetector(
               onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CardioQuiz()));
                            },
              child: Container(
                height: 50,
                color: Colors.blue[100],
                child: const Center(child: Text('The Cardiovascular System Quiz')),
                
              ),
            ),
            const Gap(20),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ImmuneQuiz()));
              },
              child: Container(
                height: 50,
                color: Colors.red[100],
                child: const Center(child: Text('The Immune System Quiz'),
              ),),
            ),
              const Gap(20),
            GestureDetector(
              onTap: () {
                 Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const NerveQuiz()));
              },
              child: Container(
                height: 50,
                color: Colors.green[100],
                child: const Center(child: Text('The Nervous System Quiz')),
              ),
            ),
            const Gap(20),
             GestureDetector(
              onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const UrineQuiz()));
              },
               child: Container(
                height: 50,
                color: Colors.amber[100],
                child: const Center(child: Text('The Urinary System Quiz')),
                         ),
             ),
            const Gap(20),
            GestureDetector(
              onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const DigestQuiz()));
              },
              child: Container(
                height: 50,
                color: Colors.pink[100],
                child: const Center(child: Text('The Digestive System Quiz')),
              ),
            ),
            const Gap(60),

            Container(
              alignment: Alignment.center,
              child: const Text(
                'Choose a system and beat the system!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                )),
            

          ],
        ));
  }
}
