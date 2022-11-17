import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:masteranatomy/controller/add_user.dart';
import 'package:masteranatomy/data/constants.dart';
import 'package:masteranatomy/view/login.dart';

class ProfilePage extends StatefulWidget {
  
const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  // Authenticates the current logged in user.
  User? user = FirebaseAuth.instance.currentUser;
  AddUser loggedInUser = AddUser();

  @override
  // Retrieves the user details from the firebase cloud firestore.
  void initState() {
    // this method subscribe to the object
    super.initState();
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
        backgroundColor: const Color(0xFF6DC395), //Color(0xFFEBEAE9),
        elevation: 0,
        automaticallyImplyLeading: false,
        toolbarHeight: 100,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              'Profile',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ],
        ),
        actions: const [Padding(padding: EdgeInsets.all(10))],
      ),
      body: SafeArea(
          child: ListView(
            physics: const NeverScrollableScrollPhysics(), 
            children: [
        Container(
            margin: const EdgeInsets.only(top: 30),
            alignment: Alignment.topCenter,
            child: Column(
              children: <Widget>[
                const CircleAvatar(
                    backgroundColor: kIconColor,
                    radius: 50,
                    child:  Icon(
                      Icons.person,
                      color: Color(0xffE6E6E6),
                      size: 80,
                    )),
                const Gap(10),
                // Retrieves and displays the current logged in users 
                // first and last name.
                Text("${loggedInUser.firstName} ${loggedInUser.lastName}",
                    style:
                        const TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
              ],
            )),
            Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            margin: const EdgeInsets.only(top: 50),
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: kWhiteColor,
            ),
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child:  Icon(
                    Icons.person,
                    color: kHeaderColor,
                    size: 30,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    // Displays the current logged in users first name.
                    "${loggedInUser.firstName}",
                    style: const TextStyle(
                        color: kSecondaryTextColor,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: kWhiteColor,
            ),
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.person,
                    color: kHeaderColor,
                    size: 30,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    // Displays the current logged in users last name.
                    "${loggedInUser.lastName}",
                    style: const TextStyle(
                        color: kSecondaryTextColor,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: kWhiteColor,
            ),
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.email_outlined,
                    color: kHeaderColor,
                    size: 30,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    // Displays the current logged in users email.
                    "${loggedInUser.email}",
                    style: const TextStyle(
                        color: kSecondaryTextColor,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(10),
          child: GestureDetector(
            // Logs the user out of their current session and returns to the login page.
            onTap: () => {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()))
            },
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: kWhiteColor,
              ),
              child: Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.logout_outlined,
                      color: kHeaderColor,
                      size: 30,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      'Logout',
                      style: TextStyle(
                          color: kSecondaryTextColor,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ])),
    );
  }
  
 

}
