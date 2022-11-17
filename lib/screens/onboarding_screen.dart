import 'package:flutter/material.dart';
import 'package:masteranatomy/view/login.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:masteranatomy/screens/intro_screen_one.dart';
import 'package:masteranatomy/screens/intro_screen_three.dart';
import 'package:masteranatomy/screens/intro_screen_two.dart';

class OnBoardingScreen extends StatefulWidget {
   final VoidCallback showLoginPage;
  const OnBoardingScreen({Key? key, required this.showLoginPage}) : super(key: key);

  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  // Controller to keep track of the the current page.
  final PageController _controller = PageController();

// keep track to know if we are on the last page or not.
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFEBEAE9),
        body: Stack(
          children: [
            // page view.
            PageView(
              controller: _controller,
              onPageChanged: (index) {
                setState(() {
                  onLastPage = (index == 2);
                });
              },
              children: const [
                // The onboarding screens.
                IntroPage1(),
                IntroPage2(),
                IntroPage3(),
              ],
            ),
            // Dots indicator.
            Container(
                alignment: const Alignment(0, 0.85),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // Skip
                    GestureDetector(
                      onTap: () {
                        _controller.jumpToPage(2);
                      },
                      child: const Text(
                        'Skip',
                        style:  TextStyle(
                            color: Colors.black54,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SmoothPageIndicator(
                      // Creates three pages.
                      controller: _controller, count: 3,
                      // Slide effect between pages.
                      effect: const SlideEffect(
                      spacing: 12,
                      dotColor: Colors.grey,
                      activeDotColor: Colors.black45
                      ),
                      ),

                        // Navigates the user to the login page.
                        onLastPage
                        ? GestureDetector(
                           onTap: () {
                            Navigator.push(context, 
                            MaterialPageRoute(builder: (context) => const LoginScreen()));
                                              },
                            child: const Text('Done',
                                style:  TextStyle(
                                    color: Colors.black54,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold)),
                          )
                        : GestureDetector(
                            onTap: () {
                              // Delayed 300 milliseconds to next page.
                              _controller.nextPage(
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.easeIn,
                              );
                            },
                            child: const Text('Next',
                                style:  TextStyle(
                                    color: Colors.black54,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold)),
                          ),
                  ],
                ))
          ],
        ));
  }
}
