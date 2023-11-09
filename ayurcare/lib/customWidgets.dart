import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'colors.dart';

class CarouselDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CarouselSlider(
        options: CarouselOptions(
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 10),
          autoPlayAnimationDuration: Duration(seconds: 1),
          height: 200.0, // Container height
          aspectRatio: 16 / 9, // Aspect ratio
          viewportFraction: 0.7, // Fraction of the viewport width
          enlargeCenterPage: true, // Makes the center item larger
        ),
        items: List.generate(5, (index) {
          // Create a gray container with rounded corners
          return Container(
            child: carouselInformation(),
            width: double.infinity,
            height: 200.0,
            margin: EdgeInsets.symmetric(horizontal: 2.0),
            decoration: BoxDecoration(
              color: Color(0x423d511d),
              borderRadius: BorderRadius.circular(20.0),
            ),
          );
        }),
      ),
    );
  }
}

class carouselInformation extends StatefulWidget {
  const carouselInformation({super.key});

  @override
  State<carouselInformation> createState() => _carouselInformationState();
}

class _carouselInformationState extends State<carouselInformation> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              "Do you Know?",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
                'Basil is not only a delicious herb used in cooking, but it also has a reputation as a natural mosquito repellent.he strong scent of basil can help keep mosquitoes at bay when planted in your garden or potted on your patio.'),
            Padding(
              padding: const EdgeInsets.fromLTRB(70, 5, 0, 0),
              child: Text('September 11, 2023',
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                  )),
            )
          ],
        ),
      ),
    );
  }
}

void showBottomSheet_1(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    builder: (context) => Container(
      height: MediaQuery.of(context).size.height * 0.48,
      decoration: new BoxDecoration(
        color: g1,
        borderRadius: new BorderRadius.only(
          topLeft: const Radius.circular(25.0),
          topRight: const Radius.circular(25.0),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5), // Shadow color and opacity
            spreadRadius: 2, // Spread radius
            blurRadius: 5, // Blur radius
            offset: Offset(0, 3), // Offset of the shadow
          ),
        ],
      ),
      child: Center(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              height: 4,
              width: 100,
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(2)),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 5, 100, 5),
              child: Text("Get Started",
                  style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 136, 136, 136))),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 5, 150, 5),
              child: Text("Create your account",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      color: Colors.grey)),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
                  child: Container(
                    child: Center(child: FaIcon(FontAwesomeIcons.google)),
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35),
                        color: Color.fromARGB(255, 231, 231, 231),
                        border: Border(
                            bottom: BorderSide(
                                color: const Color.fromARGB(255, 195, 195, 195),
                                width: 3),
                            top: BorderSide(
                                color:
                                    const Color.fromARGB(255, 195, 195, 195)),
                            right: BorderSide(
                                color:
                                    const Color.fromARGB(255, 195, 195, 195)),
                            left: BorderSide(
                                color:
                                    const Color.fromARGB(255, 195, 195, 195)))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Container(
                    child: Center(child: FaIcon(FontAwesomeIcons.meta)),
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35),
                        color: Color.fromARGB(255, 231, 231, 231),
                        border: Border(
                            bottom: BorderSide(
                                color: const Color.fromARGB(255, 195, 195, 195),
                                width: 3),
                            top: BorderSide(
                                color:
                                    const Color.fromARGB(255, 195, 195, 195)),
                            right: BorderSide(
                                color:
                                    const Color.fromARGB(255, 195, 195, 195)),
                            left: BorderSide(
                                color:
                                    const Color.fromARGB(255, 195, 195, 195)))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Container(
                    child: Center(child: FaIcon(FontAwesomeIcons.apple)),
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35),
                        color: Color.fromARGB(255, 231, 231, 231),
                        border: Border(
                            bottom: BorderSide(
                                color: const Color.fromARGB(255, 195, 195, 195),
                                width: 3),
                            top: BorderSide(
                                color:
                                    const Color.fromARGB(255, 195, 195, 195)),
                            right: BorderSide(
                                color:
                                    const Color.fromARGB(255, 195, 195, 195)),
                            left: BorderSide(
                                color:
                                    const Color.fromARGB(255, 195, 195, 195)))),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(25, 10, 0, 5),
                  child: Text("Already have an account?",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                          color: Colors.grey)),
                ),
                Text(" sign up",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                    ))
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 50,
              width: 180,
              child: Center(
                child: Text("Enter as guest",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey)),
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Color.fromARGB(255, 231, 231, 231),
                  border: Border(
                      bottom: BorderSide(
                          color: const Color.fromARGB(255, 195, 195, 195),
                          width: 3),
                      top: BorderSide(
                          color: const Color.fromARGB(255, 195, 195, 195)),
                      right: BorderSide(
                          color: const Color.fromARGB(255, 195, 195, 195)),
                      left: BorderSide(
                          color: const Color.fromARGB(255, 195, 195, 195)))),
            )
          ],
        ),
      ),
    ),
  );
}
