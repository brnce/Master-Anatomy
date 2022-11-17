import 'package:flutter/material.dart';
import 'package:masteranatomy/data/constants.dart';
import 'package:masteranatomy/screens/users_screen.dart';


class SplashScreen extends StatefulWidget {
   final VoidCallback showLoginPage;
  const SplashScreen({Key? key, required this.showLoginPage}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    var d = const Duration(seconds: 2);
    // Delayed 2 seconds to next page.
    Future.delayed(d, () {
      // To next page and close this page.
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) {
            return UsersScreen(showLoginPage: () {  },);
          },
        ),
        (route) => false,
      );
    });

    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kHeaderColor,
        body: Center(
          child: IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.biotech_outlined, color: Colors.white, size: 100),
                const VerticalDivider(
                  color: Colors.white,
                  thickness: 2,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Master',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 20),
                      child: const Text(
                        'Anatomy',
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          //fontFamily: 'Times'
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        );
  }

}