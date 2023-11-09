import 'package:ayurcare/colors.dart';
import 'package:ayurcare/userDataInput.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class chatPage extends StatefulWidget {
  const chatPage({super.key});

  @override
  State<chatPage> createState() => _chatPageState();
}

class _chatPageState extends State<chatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("[Chat Name]")),
        actions: [
          InkWell(
            child: FaIcon(FontAwesomeIcons.bars),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => MCQPage()));
            },
          ),
          SizedBox(
            width: 30,
          )
        ],
      ),
      body: Column(
        children: [
          // Chat Messages Display
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                // Build chat message widgets here
                return /* Your chat message widget */;
              },
            ),
          ),
          // Chat Input Box
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 20),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: g1),
              child: Row(
                children: [
                  // Text Input Field
                  Expanded(
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: '    How can I help you?',
                          ),
                          // Handle user input here
                        ),
                      ),
                    ),
                  ),
                  // Send Button
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(17),
                      color: Color.fromARGB(255, 60, 88, 15),
                    ),
                    child: Center(
                      child: IconButton(
                        icon: Icon(
                          Icons.arrow_upward_rounded,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          // Handle send button press here
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
