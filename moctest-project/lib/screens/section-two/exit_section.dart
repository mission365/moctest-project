import 'package:flutter/material.dart';
import 'package:moctest_project/screens/section-two/section_two_start.dart';

class ExitSection extends StatelessWidget {
  const ExitSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 300.0,
            color: Color(0xFFB4B4B4),
          ),
          // Use Flexible to prevent horizontal overflow in Row
          Flexible(
            child: SingleChildScrollView( // Make the content scrollable vertically
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 30),
                    height: 60,
                    color: Color(0xFF393736),
                    width: double.infinity,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('*gre.  POWERPREP Online Untimed Test',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20)),
                          SizedBox(width: 325),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: GestureDetector(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => SectionTwoStart()),
                                );
                              },
                              child: Container(
                                color: Color(0xFF365E90),
                                width: 110,
                                height: 50,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Return',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15)),
                                    Icon(
                                      Icons.arrow_back,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: GestureDetector(
                              onTap: (){
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(builder: (context) => EndPage()),
                                // );
                              },
                              child: Container(
                                color: Color(0xFF644D5E),
                                width: 100,
                                height: 50,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Exit Section',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15)),
                                    Icon(
                                      Icons.file_copy,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 30,
                    color: Color(0xFFF0E1E4),
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 5.0, left: 8),
                      child: Text("Section 2 to 5", style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left:50.0, right:50.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Exit Section Confirmation",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24),
                        ),
                        Divider(
                          color: Colors.black38,
                        ),
                        SizedBox(height: 30),
                        RichText(
                          text: TextSpan(
                            style: TextStyle(fontSize: 14, color: Colors.black),
                            children: <TextSpan>[
                              TextSpan(text: 'If you select '),
                              TextSpan(
                                text: 'Exit Section ',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: 'you WILL NOT be able to return to this section of the test.',
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        RichText(
                          text: TextSpan(
                            style: TextStyle(fontSize: 14, color: Colors.black),
                            children: <TextSpan>[
                              TextSpan(text: 'Select ', ),
                              TextSpan(
                                text: 'Exit Section ',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: 'to confirm that you would like to exit this section. Select ',
                              ),
                              TextSpan(
                                  text: 'Return ',
                                  style: TextStyle(fontWeight: FontWeight.bold)
                              ),
                              TextSpan(
                                text: 'to return to the section.',
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            width: 300.0,
            color: Color(0xFFB4B4B4),
          ),
        ],
      ),
    );
  }
}