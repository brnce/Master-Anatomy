import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:masteranatomy/data/constants.dart';
import 'package:masteranatomy/data/course.dart';
import 'package:masteranatomy/data/tutor.dart';
import 'package:masteranatomy/pages/tutor_page.dart';
import 'package:masteranatomy/screens/tutor_screen.dart';

class PopularTutors extends StatelessWidget {
  const PopularTutors({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            const Text('Popular Tutors',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            GestureDetector(
                child: const Text(
                  'View all',
                  style: TextStyle(color: kHeaderColor, fontSize: 16, fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  //Navigator.of(context).popUntil((route) => route.isFirst);

                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (BuildContext context) => const TutorsPage(),
                  ));
                })
          ]),
        ),
        const Gap(20),
        //popular tutors carousel
        SizedBox(
            height: 200.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: courses.length,
              itemBuilder: (BuildContext context, int index) {
                Tutor tutor = tutors[index];
                return GestureDetector(
                  onTap: (() => Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (_) => TutorScreen(tutor: tutor,)))),
                    
                  child: Container(
                      margin: const EdgeInsets.all(10),
                      width: 150.0,
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: <Widget>[
                          Positioned(
                            bottom: 20,
                            child: Container(
                              height: 50,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    Text(
                                      tutor.name,
                                      style: const TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                    Text(
                                      tutor.course,
                                      style: const TextStyle(
                                        fontSize: 10,
                                        color: kSmallTextColor,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.black26,
                                    offset: Offset(0.0, 2.0),
                                    blurRadius: 6,
                                  ),
                                ],
                              ),
                              child: Stack(
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image(
                                      height: 120,
                                      width: 120,
                                      image: AssetImage(tutor.authorUrl),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ],
                              ))
                        ],
                      )),
                );
                    
              },
            ))
      ],
    );
  }
}