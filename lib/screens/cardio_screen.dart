import 'package:flutter/material.dart';
import 'package:masteranatomy/data/constants.dart';
import 'package:masteranatomy/pages/quizzes_page.dart';
import 'package:masteranatomy/model/quiz_screen.dart';

class CardioQuiz extends StatelessWidget {
  const CardioQuiz({Key? key}) : super(key: key);

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
                Text('Cardiovascular System Quiz',
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
          child: Column(
            children: [
              const SizedBox(height: 40),
              const Text('Brief explanation about quiz',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ), textAlign: TextAlign.center,),
              const SizedBox(height: 50,),
               Row(
                 children: [
                   Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                     children: [
                       Container(
                        margin: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black)
                        ),
                        child: const Icon(Icons.question_mark_outlined),
                        ),
                     ],
                   ),
                  Column(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(right: 65),
                        child: Text('10 Questions',
                        style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),),
                      ),
                  
                     Text('1 point for a correct answer',
                     style: TextStyle(
                          fontSize: 12,
                          color: kSecondaryTextColor
                        ),),
                      
                  ],           
                  )
                    ],
                  ),

                   Row(
                 children: [
                   Column(
                     children: [
                       Container(
                        margin: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black)
                        ),
                        child: const Icon(Icons.access_time_rounded),
                        ),
                     ],
                   ),
   
                  Column(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(right: 70),
                        child: Text('5 minutes',
                        style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      ),
                  
                     Text('Total duration of the quiz',
                     style: TextStyle(
                          fontSize: 12,
                          color: kSecondaryTextColor
                        ),),
                      
                  ],
                  )         
                    ], 
                  
                  ),
                  const SizedBox(height: 50),
                  

                  const Text('Please read the text below carefully so you can understand it',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold
                  )
                  ),
                  const SizedBox(height: 50),
                  Container(
                    padding: const EdgeInsets.all(5),
                    margin: const EdgeInsets.all(10),
                    alignment: Alignment.topLeft,
                    child: const Text('1 point is awarded for a correct answer and no marks for an incorrect answer'),
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    margin: const EdgeInsets.all(10),
                    alignment: Alignment.topLeft,
                    child: const Text('Tap an option to select the correct answer'),
                  ),
                   Container(
                    padding: const EdgeInsets.all(5),
                    margin: const EdgeInsets.all(10),
                    alignment: Alignment.topLeft,
                    child: const Text('You will be presented with your score at the end of the quiz with an option to retake quiz'),
                  ),
                  const SizedBox(height: 100),

                    Material(
                      
      elevation: 5,
      borderRadius: BorderRadius.circular(12),
      color: kHeaderColor,
      child: MaterialButton(
          padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
          onPressed: () {
             Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (BuildContext context) => const QuizScreen(),
                  ));
          },
          child: const Text(
            "Start Quiz",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          )),
    )
                 ],
               
                
               ),
         ) 

            ],
          ),);

     
  }
}