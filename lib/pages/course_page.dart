import 'package:flutter/material.dart';
import 'package:masteranatomy/data/catalogue.dart';
import 'package:masteranatomy/data/constants.dart';
import 'package:masteranatomy/pages/home_page.dart';
import 'package:masteranatomy/screens/catalogue_screen.dart';

class CoursePage extends StatelessWidget {
  const CoursePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF6DC395),
          elevation: 0,
          leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              color: Colors.white,
              onPressed: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const HomePage()))
                  }),
          toolbarHeight: 100,
          title: Column(
            children: const [
              Text(
                'Start Learning from our course pack',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ],
          ),
          actions: const [Padding(padding: EdgeInsets.all(10))],
        ),
        body: SafeArea(
            child: Container(
                margin: const EdgeInsets.all(10),
                height: 709,
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: catalogues.length,
                    itemBuilder: (BuildContext context, int index) {
                      Catalogue catalogue = catalogues[index];
                      return GestureDetector(
                          onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => CatalogueScreen(
                                    catalogue: catalogue,
                                  ),
                                ),
                              ),
                          child: Positioned(
                              bottom: 20,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Container(
                                  margin: const EdgeInsets.all(10),
                                  width: MediaQuery.of(context).size.width,
                                  height: 400,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(30),
                                      boxShadow: const [
                                        BoxShadow(
                                          color: Colors.black26,
                                          offset: Offset(0.0, 2.0),
                                          blurRadius: 6,
                                        )
                                      ]),
                                  child: Container(
                                    margin: const EdgeInsets.all(0),
                                    child: Stack(children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            color: Colors.transparent,
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    catalogue.imageUrl),
                                                fit: BoxFit.fill)),
                                        height: 200,
                                      ),
                                      Container(
                                        height: 200,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            gradient: LinearGradient(
                                                begin:
                                                    FractionalOffset.topCenter,
                                                end: FractionalOffset
                                                    .bottomCenter,
                                                colors: [
                                                  Colors.white70.withOpacity(0),
                                                  Colors.white30,
                                                ],
                                                stops: const [
                                                  0.0,
                                                  1.0
                                                ])),
                                      ),
                                      Positioned(
                                        bottom: 150,
                                        child: Padding(
                                          padding: const EdgeInsets.all(10),
                                          child: Text(
                                            catalogue.title,
                                            style: const TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        bottom: 130,
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20),
                                          child: Row(
                                            children: const [
                                              Icon(Icons.menu_book_rounded,
                                                  color: kHeaderColor),
                                              SizedBox(
                                                width: 10,
                                              ),
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
                                      ),
                                      Container(
                                        margin: const EdgeInsets.all(10),
                                        padding: const EdgeInsets.all(10),
                                        child: Positioned(
                                            top: 0,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  catalogue.topic1,
                                                  style: const TextStyle(
                                                    color: kSecondaryTextColor,
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 5,
                                                ),
                                                Text(
                                                  catalogue.topic2,
                                                  style: const TextStyle(
                                                    color: kSecondaryTextColor,
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 5,
                                                ),
                                                Text(
                                                  catalogue.topic3,
                                                  style: const TextStyle(
                                                    color: kSecondaryTextColor,
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 5,
                                                ),
                                                Text(
                                                  catalogue.topic4,
                                                  style: const TextStyle(
                                                    color: kSecondaryTextColor,
                                                  ),
                                                ),
                                              ],
                                            )),
                                      ),
                                    ]),
                                  ),
                                ),
                              ))
                              );
                    }))));
  }
}
