import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:masteranatomy/controller/add_user.dart';
import 'package:masteranatomy/data/constants.dart';
import 'package:masteranatomy/pages/course_page.dart';
import 'package:masteranatomy/pages/notifications_page.dart';
import 'package:masteranatomy/view/popular_tutor.dart';
import 'package:masteranatomy/view/quiz.dart';
import 'package:masteranatomy/view/recommended_courses.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  TextEditingController searchController = TextEditingController();

  @override
  void dispose() {
    searchController.removeListener(onSearchChanged);
    searchController.dispose();
    super.dispose();
  }

  onSearchChanged() {
    // ignore: avoid_print
    print(searchController.text);
  }

  User? user = FirebaseAuth.instance.currentUser;
  AddUser loggedInUser = AddUser();

  @override
  void initState() {
    // Creates a search box. 
    searchController.addListener(onSearchChanged);
    // this method subscribe to the object
    super.initState();
    // Retrieves the user details from the firebase cloud firestore.
    FirebaseFirestore.instance
        .collection("users")
        .doc(user!.uid)
        .get()
        .then((value) {
      loggedInUser = AddUser.fromMap(value.data());
      // Notifies the the framework that the internal state of this object has changed
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFEBEAE9),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          backgroundColor: const Color(0xFFEBEAE9),
          toolbarHeight: 100,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                // displays the first name of the current logged in user.
                "Welcome, ${loggedInUser.firstName}",
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              IconButton(
                  icon: const Icon(
                    Icons.notifications_none_outlined,
                    color: kHeaderColor,
                    size: 30,
                  ),
                  color: Colors.white,
                  onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => const NotificationPage(),
                                ),
                              ),),
            ],
          ),
        ),
        body: ListView(
          children: [
            Container(
              alignment: Alignment.topCenter,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: const Text(
                'Browse all courses and topics',
                style: TextStyle(
                    color: kSecondaryTextColor,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                controller: searchController,
                style: const TextStyle(
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: kWhiteColor,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100),
                    borderSide: BorderSide.none,
                  ),
                  hintText: "Search for courses, topics and tutors",
                  suffixIcon: const Icon(
                    Icons.search,
                    color: kHeaderColor,
                  ),
                  prefixIconColor: kHeaderColor,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Recommended Courses',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                    onTap: () { Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (BuildContext context) =>  const CoursePage(),
                  ));
                },
                    child: const Text('View all',
                        style: TextStyle(
                            color: kHeaderColor,
                            fontSize: 16,
                            fontWeight: FontWeight.bold)),
                  )
                ],
              ),
            ),  

            const RecommendedCourses(),
            const Gap(20),
            const PopularTutors(),
            const Gap(20),
            const Quiz(),
            const Gap(20),
          ]
        )
            );
  }
}

 