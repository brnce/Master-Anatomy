import 'package:flutter/material.dart';
import 'package:masteranatomy/pages/course_page.dart';
import 'package:masteranatomy/pages/profile_page.dart';
import 'package:masteranatomy/pages/tutor_page.dart';
import 'package:masteranatomy/screens/home_screen.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex =0;
  static final List<Widget> _widgetOptions = <Widget>[
     const HomeScreen(),
     const CoursePage(),
     const TutorsPage(),
     const ProfilePage(),
  ];

  // Displays the related page when the icon 
  // on the bottom navigation bar is tapped. 
  void _onItemTapped(int index) {
    setState(() {
          _selectedIndex = index;
    });  
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      // Builds a bottom navigation bar.
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          elevation: 10,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: const Color(0xFF6DC395),
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: const Color(0xFF525C57),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Course'),
            BottomNavigationBarItem(icon: Icon(Icons.co_present_outlined), label: 'Tutors'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ]),
    );
  }
}
