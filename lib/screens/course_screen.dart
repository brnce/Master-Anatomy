import 'package:flutter/material.dart';
import 'package:masteranatomy/data/constants.dart';
import 'package:masteranatomy/data/course.dart';


class CourseScreen extends StatefulWidget {
  final Course course;

  const CourseScreen({Key? key, required this.course}) : super(key: key);

 @override
  _CourseScreenState createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
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
                child: Center(child: 
                Text(widget.course.title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,

                ),)),
              )
            ),
            
              toolbarHeight: 80,
            leading: const BackButton(
              color: kHeaderColor,
              ), 
          // Pins the app bar.
            pinned: true,
            expandedHeight: 300,
            backgroundColor: Colors.white,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                widget.course.courseUrl, 
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),)
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  child: Padding(
                    padding: const EdgeInsets.all(10),                         
                          child: Column(                                                       
                            children: <Widget> [
                              Padding(
                               padding: const EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  children: const [                                
                                    Icon (Icons.menu_book_rounded, color: kHeaderColor),
                                    SizedBox(width: 20,),
                                    Text(
                                      "Topics",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ),    
                            ]          

                  )
                )
                ),
                Container(
                  margin: const EdgeInsets.only(left: 40, right: 20),
                                  child: Positioned(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                       children: <Widget>[
                                        Text(
                                           widget.course.topic1,
                                           style: const TextStyle(
                                            color: kSecondaryTextColor,
                                          ),
                                          ), 
                                          const SizedBox(height: 5,),
                                          Text(
                                           widget.course.topic2,
                                           style: const TextStyle(
                                            color: kSecondaryTextColor,
                                          ),
                                          ),
                                          const SizedBox(height: 5,),
                                            Text(
                                           widget.course.topic3,
                                           style: const TextStyle(
                                            color: kSecondaryTextColor,
                                          ),
                                          ),
                                          const SizedBox(height: 5,),
                                            Text(
                                           widget.course.topic4,
                                           style: const TextStyle(
                                            color: kSecondaryTextColor,
                                          ),
                                          ),
                                          ],
                                          )),
                                
                              ),
                              const SizedBox(height: 15,),
                              Container(
                                padding: const EdgeInsets.only(left: 20, right: 20),
                                child: Stack(
                                  children: <Widget>[
                                    Positioned(
                                      child: Text(
                                        widget.course.topic1,
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                          ),
                                          ), 
                                          )
                                          ]
                                          )),
                                          const SizedBox(height: 10,),
                                          Container(
                                            margin: const EdgeInsets.only(left: 25, right: 25),
                                            child: Stack(
                                              children: <Widget>[
                                                Positioned(
                                                  child: Text(
                                                    widget.course.para1,
                                                    style: const TextStyle(
                                                      color: Colors.black,
                                                      ),
                                                      ), 
                                                      )
                                                      ]
                                                      )
                                                      ),
                                          const SizedBox(height: 20,),
                                          Container(
                                            margin: const EdgeInsets.only(left: 40, right: 40),
                                            child: Stack(
                                              children: <Widget>[
                                                Positioned(
                                                  child: Image(image: AssetImage(widget.course.notesUrl),
                                                    
                                                      ), 
                                                      )
                                                      ]
                                                      )
                                                      ),

                                                       const SizedBox(height: 30,),
                              Container(
                                margin: const EdgeInsets.only(left: 20, right: 20) ,
                                child: Stack(
                                  children: <Widget>[
                                    Positioned(
                                      child: Text(
                                        widget.course.topic2,
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                          ),
                                          ), 
                                          )
                                          ]
                                          )),

                                           const SizedBox(height: 10,),
                                          Container(
                                            margin: const EdgeInsets.only(left: 20, right: 20),
                                            child: Stack(
                                              children: <Widget>[
                                                Positioned(
                                                  child: Text(
                                                    widget.course.para2,
                                                    style: const TextStyle(
                                                      color: Colors.black,
                                                      ),
                                                      ), 
                                                      )
                                                      ]
                                                      )
                                                      ),

                                                      const SizedBox(height: 20,),
                                                      Container(
                                margin: const EdgeInsets.only(left: 20, right: 20) ,
                                child: Stack(
                                  children: <Widget>[
                                    Positioned(
                                      child: Text(
                                        widget.course.topic3,
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                          ),
                                          ), 
                                          )
                                          ]
                                          )),

                                           const SizedBox(height: 10,),
                                          Container(
                                            margin: const EdgeInsets.only(left: 20, right: 20),
                                            child: Stack(
                                              children: <Widget>[
                                                Positioned(
                                                  child: Text(
                                                    widget.course.para3,
                                                    style: const TextStyle(
                                                      color: Colors.black,
                                                      ),
                                                      ), 
                                                      )
                                                      ]
                                                      )
                                                      ),

                                                                       const SizedBox(height: 20,),
                                                      Container(
                                margin: const EdgeInsets.only(left: 20, right: 20) ,
                                child: Stack(
                                  children: <Widget>[
                                    Positioned(
                                      child: Text(
                                        widget.course.topic4,
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                          ),
                                          ), 
                                          )
                                          ]
                                          )),

                                           const SizedBox(height: 10,),
                                          Container(
                                           margin: const EdgeInsets.only(left: 20, right: 20),
                                            child: Stack(
                                              children: <Widget>[
                                                Positioned(
                                                  child: Text(
                                                    widget.course.para4,
                                                    style: const TextStyle(
                                                      color: Colors.black,
                                                      ),
                                                      ), 
                                                      )
                                                      ]
                                                      )
                                                      ),
                                                   
     

 

const SizedBox(height: 30,),

              ],
            )
            )
          
        ],
      ),
    );
  }
}




