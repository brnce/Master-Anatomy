import 'package:flutter/material.dart';
import 'package:masteranatomy/data/tutor.dart';
import 'package:masteranatomy/pages/home_page.dart';
import 'package:masteranatomy/screens/tutor_screen.dart';

class TutorsPage extends StatelessWidget {
  const TutorsPage({Key? key}) : super(key: key);

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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const HomePage()))
                  }),
          toolbarHeight: 100,
          title: Column(
            children: const [
              Text(
                'Browse top-industry tutors',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ],
          ),
          actions: const [Padding(padding: EdgeInsets.all(10))],
        ),
        body: SafeArea(
           child: Container(
                margin: const EdgeInsets.all(10),
                height: 709,
                // Creates a list that that inherits data 
                // from a pre-populated tutors dart file.
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: tutors.length,
                    itemBuilder: (BuildContext context, int index) {
                      Tutor tutor = tutors[index];
                      return GestureDetector(
                          onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => TutorScreen(
                                    tutor: tutor,
                                  ),
                                ),
                              ),
            child: Padding(
              padding: const EdgeInsets.all(20),
                child: Container(
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    image: DecorationImage(
                        image: AssetImage(tutor.authorUrl),
                        colorFilter: const ColorFilter.mode(Colors.black45, BlendMode.darken),
                        fit: BoxFit.cover,
                      )
                  ),
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      tutor.name,
                      style: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
                  );
                    }
                )

                  )
        )
                  );
  }
}
