import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:masteranatomy/data/constants.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  TextEditingController emailEditingController = TextEditingController();

// Disposes the memory allocated to the 
// variable when the state object is removed. 
  @override
  void dispose() {
    emailEditingController.dispose();
    super.dispose();
  }

  Future passwordReset() async {
    try {
      // Sends a password reset email to the user
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: emailEditingController.text.trim());
      showDialog(
          context: context,
          builder: (context) {
            return const AlertDialog(
              // Dialog message to show that the email has been sent.
              content: Text('Password reset link sent! Check your Email'),
            );
          });
    } on FirebaseAuthException catch (e) {
      // ignore: avoid_print
      print(e);
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: Text(e.message.toString()),
            );
          });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFEBEAE9),
        appBar: AppBar(
          backgroundColor: const Color(0xFF6DC395),
          elevation: 0,
          leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              color: Colors.white,
              onPressed: () => {
                    Navigator.pop(context),
                  }),
          toolbarHeight: 100,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Enter Your Email to receive password reset link',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                  autofocus: false,
                  controller: emailEditingController,
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.email_outlined, color: kHeaderColor),
                    contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                    hintText: "Email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  )),
            ),
            const SizedBox(height: 20),
            MaterialButton(
              onPressed: passwordReset,
              color: kHeaderColor,
              child: const Text('Reset Password'),
            )
          ],
        ));
  }
}
