import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:masteranatomy/data/constants.dart';
import 'package:masteranatomy/data/tutor.dart';
import 'package:masteranatomy/pages/home_page.dart';

class TutorScreen extends StatefulWidget {
  final Tutor tutor;

   const TutorScreen({Key? key, required this.tutor}) : super(key: key);

  @override
  _TutorScreenState createState() => _TutorScreenState();
}

class _TutorScreenState extends State<TutorScreen> {
  // Create a function that shows a dialog containing a date picker.
  void _showDatePicker() {
    showDatePicker(
      // Setting the calendar start and end year.
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2025));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEBEAE9),
      appBar: AppBar(
        backgroundColor: const Color(0xFF6DC395),
        elevation: 0,
        leading: const BackButton(
          color: Colors.white,
        ),
        toolbarHeight: 100,
        title: Container(
          margin: const EdgeInsets.only(left: 300),
          child: IconButton(
              icon: const Icon(Icons.messenger_outline),
              color: Colors.white,
              onPressed: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const HomePage()))
                  }),
        ),
        actions: const [Padding(padding: EdgeInsets.all(10))],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
              margin: const EdgeInsets.only(top: 30),
              child: Column(
                children: <Widget>[
                ClipOval(
                  child: SizedBox.fromSize(
                    size: const Size.fromRadius(70),
                    child: Image(
                      image: AssetImage(widget.tutor.authorUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const Gap(10),
                Text(widget.tutor.name,
                    style:
                        const TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(widget.tutor.background,
                      style: const TextStyle(
                        fontWeight: FontWeight.w200,
                        fontSize: 14,
                      )),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(widget.tutor.bio),
                ),
                MaterialButton(
                  onPressed: _showDatePicker,
                    color: kHeaderColor,
                  child:  const Padding(
                    padding: EdgeInsets.all(20),
                    child: Text('Book Session',
                    style: TextStyle(
                      color: kWhiteColor,
                      fontSize: 18)
                    )),
                  ),
              ])),
        ),
      ),
    );
  }
}
