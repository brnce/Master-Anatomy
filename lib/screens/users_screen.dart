import 'package:flutter/material.dart';
import 'package:masteranatomy/data/constants.dart';
import 'package:masteranatomy/pages/tutor_login_page.dart';
import 'package:masteranatomy/screens/onboarding_screen.dart';


class UsersScreen extends StatelessWidget {
  // This function is used to communicate between widgets
   final VoidCallback showLoginPage;
  const UsersScreen({Key? key, required this.showLoginPage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFEBEAE9),
        body: Stack(
          children: [
               Positioned(           
                child: Container(
                  margin: const EdgeInsets.only(top: 170),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                       width: MediaQuery.of(context).size.width,
                       height: 300,
                       decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: const [
                          BoxShadow (
                            color: Colors.black26,
                            offset: Offset(0.0, 2.0),
                            blurRadius: 6)
                                ]
                              ),
                              
                             child: Column(
                                   children: [
                                     const Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Text('I am a Learner',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold
                                        ),
                                      ),     
                                ),
                                const SizedBox(height: 10),
                                       SizedBox(                                    
                                        height: 150,
                                        width: 150,
                                         child: Image.asset('assets/images/learner.png',
                                         ),
                                       ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 10, right: 5),
                                  child: Text('Study course content, message tutors or take some quizzes',
                                        style: TextStyle(
                                            fontSize: 13,
                                            color: Colors.black,
                                          ),
                                        ),
                                ),
                                      

                                      Container(
                                         margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
                                         width: double.infinity,
                                         child: RawMaterialButton(
                                          fillColor: const Color(0xFF6DC395),
                                          elevation: 0.0,
                                          padding: const EdgeInsets.symmetric(vertical: 10),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(30)),
                                             onPressed: () {
                                              Navigator.push(context, 
                                              MaterialPageRoute(builder: (context) => OnBoardingScreen(showLoginPage: () {  },)));
                                              },
                                              child: const Text(
                                                'Learner Log in',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18,
                                                  ),
                                                  ),
                                                  ),),
                                                  ],),
                                                  ),
                                                  ),)),
                  Positioned(           
                    child: Container(
                  margin: const EdgeInsets.only(top: 500),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                       width: MediaQuery.of(context).size.width,
                       height: 300,
                       decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: const [
                          BoxShadow (
                            color: Colors.black26,
                            offset: Offset(0.0, 2.0),
                            blurRadius: 6)
                                ]
                              ),

                                 child: Column(
                                   children: [
                                     const Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Text('I am a Tutor',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold
                                        ),
                                      ),     
                                ),
                                const SizedBox(height: 10,),
                                       SizedBox(
                                        height: 150,
                                        width: 150,
                                         child: Image.asset('assets/images/teacher.png',
                                         fit: BoxFit.cover,),
                                       ),
                                const Text('Manage learners bookings, and review course contents',
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.black,
                                        ),
                                      ),
                                      

                                      Container(
                                         margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
                                         //padding: EdgeInsets.only(left: 20, right: 20),
                                         width: double.infinity,
                                         child: RawMaterialButton(
                                          fillColor: const Color(0xFF6DC395),
                                          elevation: 0.0,
                                          padding: const EdgeInsets.symmetric(vertical: 10),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(30)),
                                            onPressed: () {
                                              Navigator.push(context, 
                                              MaterialPageRoute(builder: (context) => const TutorLoginPage()));
                                              },
                                              child: const Text(
                                                'Tutor Log in',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18,
                                                  ),
                                                  ),
                                                  ),),
                                                  ],),
                                                  ),
                                                  ),)),
                                                  Container(
                                                     margin: const EdgeInsets.all(80),
                                                     child: Padding(
                                                      padding: const EdgeInsets.only(left: 90),
                                                      child: Column(
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                        children: const [
                                                          Icon(Icons.biotech_outlined, color: kHeaderColor, size: 80),
                                                          ],
                                                          ),),
                                                           ) ],
                                                           ),
                                                           );
  }
}