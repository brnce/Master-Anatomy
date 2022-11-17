import 'package:flutter/material.dart';
import 'package:masteranatomy/data/constants.dart';
import 'package:masteranatomy/pages/quizzes_page.dart';

class Quiz extends StatelessWidget {
  const Quiz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
            Positioned(
              // top: 330,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 400,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: const [
                                  BoxShadow(
                                    color:  Colors.black26,
                                    offset: Offset(0.0, 2.0),
                                    blurRadius: 6,
                                  ),
                                ],
                    ),
                    
                     child: Padding(
                            padding: const EdgeInsets.all(10),                         
                            child: Column(                                                       
                              children: <Widget> [
                                Padding(
                                 padding: const EdgeInsets.symmetric(horizontal: 10),
                                  child: Row(
                                    children: const [                                
                                      Icon (Icons.quiz_rounded, color: kHeaderColor),
                                      SizedBox(width: 20,),
                                      Text(
                                        "Quiz Bank",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
            
                                const Padding(
                                  padding: EdgeInsets.only(right: 170),
                                  child: Text(
                                    "Apply your Knowledge",
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: kSmallTextColor,
                                    ),
                                  ),
                                ),
            
                                 const SizedBox(width: 10,),
                                Image.asset('assets/images/quiz.png'),
            
                                 const Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Text(
                                    "Our Quiz Bank gives you quizzes and exam questions just like those you'll be hit with on exam day. Try it now and get a great score.",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                  
                                   GestureDetector(
                                    child: const Text(
                                      'TRY NOW',
                                      style: TextStyle(color: kHeaderColor, fontSize: 10),
                                      ),
                                      onTap: () {
                                        //Navigator.of(context).popUntil((route) => route.isFirst);
                                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) =>  const QuizPage(),));
                                        }
                                        )
                              ],
                            ),
                             ),
                  ),
                  
              ),
            ), 
      ],
    );
  }
}