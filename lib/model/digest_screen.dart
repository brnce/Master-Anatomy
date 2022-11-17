import 'package:flutter/material.dart';
import 'package:masteranatomy/data/constants.dart';
import 'package:masteranatomy/pages/quizzes_page.dart';

class DigestQuiz extends StatelessWidget {
  const DigestQuiz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

backgroundColor: const Color(0xFFEBEAE9),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: const Color(0xFFEBEAE9),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(0),
              child: Container(
                width: double.maxFinite,
                padding: const EdgeInsets.only(top:5, bottom: 10),
                decoration: const BoxDecoration(
                  color: kHeaderColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)
                  )
                ),
                child: const Center(child: 
                Text('Digestive System Quiz',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),)),
              )
            ),
            
              toolbarHeight: 80,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              color: kHeaderColor,
              onPressed: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const QuizPage()))
                  }),
               pinned: true,
          ),

         // SizedBox(height: 20),
         SliverToBoxAdapter(
          child: Container(
            margin: const EdgeInsets.only( top: 350),
            child: const Padding(
              padding: EdgeInsets.all(20),
              child: Text('Sorry no quiz available at the moment',
              style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              )),
            ),
          ),     
         )
        ]
      )
  );
     
  }
}