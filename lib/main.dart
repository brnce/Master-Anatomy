import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:masteranatomy/screens/splash_screen.dart';

// A method to initialize the firebase app
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of the application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(showLoginPage: () {  },),
        );
  }
}
