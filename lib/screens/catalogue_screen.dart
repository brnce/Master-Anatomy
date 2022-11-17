import 'package:flutter/material.dart';

import 'package:masteranatomy/data/catalogue.dart';
import 'package:masteranatomy/data/constants.dart';

class CatalogueScreen extends StatefulWidget {
  final Catalogue catalogue;

  const CatalogueScreen({
    Key? key,
    required this.catalogue,
  }) : super(key: key);

  @override
  _CatalogueScreenState createState() => _CatalogueScreenState();
}

class _CatalogueScreenState extends State<CatalogueScreen> {
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
                    padding: const EdgeInsets.only(top: 5, bottom: 10),
                    decoration: const BoxDecoration(
                        color: kHeaderColor,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),
                    child: Center(
                        child: Text(
                      widget.catalogue.title,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                  )),
                  // Sets the app bar height.
              toolbarHeight: 80,
              leading: const BackButton(
                color: kHeaderColor,
              ),
            
              pinned: true,
              expandedHeight: 300,
              backgroundColor: Colors.white,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  widget.catalogue.courseUrl,
                  width: double.maxFinite,
                  fit: BoxFit.cover,
                ),
              )),
          SliverToBoxAdapter(
              child: Column(
            children: [
              Container(
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            children: const [
                              Icon(Icons.menu_book_rounded,
                                  color: kHeaderColor),
                              SizedBox(
                                width: 20,
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
                      ]))),
              Container(
                margin: const EdgeInsets.only(left: 40, right: 20),
                child: Positioned(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      widget.catalogue.topic1,
                      style: const TextStyle(
                        color: kSecondaryTextColor,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      widget.catalogue.topic2,
                      style: const TextStyle(
                        color: kSecondaryTextColor,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      widget.catalogue.topic3,
                      style: const TextStyle(
                        color: kSecondaryTextColor,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      widget.catalogue.topic4,
                      style: const TextStyle(
                        color: kSecondaryTextColor,
                      ),
                    ),
                  ],
                )),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Stack(children: <Widget>[
                    Positioned(
                      child: Text(
                        widget.catalogue.topic1,
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    )
                  ])),
              const SizedBox(
                height: 10,
              ),
              Container(
                  margin: const EdgeInsets.only(left: 25, right: 25),
                  child: Stack(children: <Widget>[
                    Positioned(
                      child: Text(
                        widget.catalogue.para1,
                        style: const TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    )
                  ])),
              const SizedBox(
                height: 20,
              ),
              Container(
                  margin: const EdgeInsets.only(left: 40, right: 40),
                  child: Stack(children: <Widget>[
                    Positioned(
                      child: Image(
                        image: AssetImage(widget.catalogue.notesUrl),
                      ),
                    )
                  ])),
              const SizedBox(
                height: 30,
              ),
              Container(
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  child: Stack(children: <Widget>[
                    Positioned(
                      child: Text(
                        widget.catalogue.topic2,
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    )
                  ])),
              const SizedBox(
                height: 10,
              ),
              Container(
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  child: Stack(children: <Widget>[
                    Positioned(
                      child: Text(
                        widget.catalogue.para2,
                        style: const TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    )
                  ])),
              const SizedBox(
                height: 20,
              ),
              Container(
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  child: Stack(children: <Widget>[
                    Positioned(
                      child: Text(
                        widget.catalogue.topic3,
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    )
                  ])),
              const SizedBox(
                height: 10,
              ),
              Container(
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  child: Stack(children: <Widget>[
                    Positioned(
                      child: Text(
                        widget.catalogue.para3,
                        style: const TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    )
                  ])),
              const SizedBox(
                height: 20,
              ),
              Container(
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  child: Stack(children: <Widget>[
                    Positioned(
                      child: Text(
                        widget.catalogue.topic4,
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    )
                  ])),
              const SizedBox(
                height: 10,
              ),
              Container(
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  child: Stack(children: <Widget>[
                    Positioned(
                      child: Text(
                        widget.catalogue.para4,
                        style: const TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    )
                  ])),
      

           const SizedBox(height: 20),
            ],
          ))
        ],
      ),
    );
  }
}