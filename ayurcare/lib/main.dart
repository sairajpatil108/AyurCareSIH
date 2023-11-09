import 'package:ayurcare/chatPage.dart';
import 'package:ayurcare/customWidgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: g1,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25, 8, 10, 8),
                    child: Stack(children: [
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(35)),
                      ),
                      Image.asset(
                        "assets/profilepicture.png",
                        height: 80,
                        width: 80,
                      )
                    ]),
                  ),
                  Text(
                    'Hey,[Name]',
                    style: TextStyle(fontSize: 15),
                  ),
                  SizedBox(
                    width: 130,
                  ),
                  InkWell(
                    onTap: () {
                      showBottomSheet_1(context);
                    },
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                      child: Container(
                          height: 30,
                          width: 20,
                          child: FaIcon(FontAwesomeIcons.bars)),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            CarouselDemo(),
            SizedBox(
              height: 30,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.85,
              height: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey
                        .withOpacity(0.5), // Shadow color and opacity
                    spreadRadius: 2, // Spread radius
                    blurRadius: 5, // Blur radius
                    offset: Offset(0, 3), // Offset of the shadow
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 15, 120, 3),
                        child: Text("Saved Chats",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 15, 0, 0),
                        child: Icon(Icons.bookmark_outline),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 8, 15, 2),
                    child: Divider(),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 140, 3),
                    child: Text("previous chats",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        )),
                  ),
                  Container(
                    height: 254,
                    width: MediaQuery.of(context).size.width * 0.85,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(0).copyWith(
                            // bottomLeft: Radius.circular(20),
                            // bottomRight: Radius.circular(20)
                            )),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Container(
                                width: 300,
                                height: 60,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(28),
                                    color: Color(0xffc6cbaa))),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Container(
                                width: 300,
                                height: 60,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(28),
                                    color: Color(0xffc6cbaa))),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Container(
                                width: 300,
                                height: 60,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(28),
                                    color: Color(0xffc6cbaa))),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Container(
                                width: 300,
                                height: 60,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(28),
                                    color: Color(0xffc6cbaa))),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Container(
                                width: 300,
                                height: 60,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(28),
                                    color: Color(0xffc6cbaa))),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.add_rounded,
            color: g1,
            size: 30,
          ),
          shape: CircleBorder(),
          backgroundColor: g4,
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => chatPage()));
          }),
    );
  }
}
