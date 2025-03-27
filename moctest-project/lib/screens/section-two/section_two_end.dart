import 'package:flutter/material.dart';
import 'package:moctest_project/screens/section-two/review_page.dart';

import 'Question12/question_twelve.dart';

class SectionTwoEnd extends StatelessWidget {
  const SectionTwoEnd({super.key});

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
          // Wrap in a SingleChildScrollView to handle overflow
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
                          SizedBox(width: 280),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => ReviewPage() ),
                                );
                              },
                              child: Container(
                                color: Color(0xFF4D4C4D),
                                width: 70,
                                height: 50,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Review',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15)),
                                    Icon(
                                      Icons.bookmark,
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
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => QuestionTwelve()),
                                );
                              },
                              child: Container(
                                color: Color(0xFF365E90),
                                width: 90,
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
                              onTap: () {
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(builder: (context) => SectionTwoStartPage()),
                                // );
                              },
                              child: Container(
                                color: Color(0xFF365E90),
                                width: 90,
                                height: 50,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Continue',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15)),
                                    Icon(
                                      Icons.arrow_forward_outlined,
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
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: "Section 2 to 5", // Bold part
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.only(left:90.0, right:90.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "End of Section",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Divider(
                          color: Colors.black38,
                        ),
                        SizedBox(height: 25),
                        Text(
                          "You have reached the end of this section. You have time remaining to review. As long as there is time remaining, you can check your work. Once you leave this section, you WILL NOT be able to return to it.",
                          style: TextStyle(
                              fontSize: 16),
                        ),
                        SizedBox(height: 20),
                        const Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Select ', // Regular text before "Continue"
                                style: TextStyle(fontSize: 13),
                              ),
                              TextSpan(
                                text: 'Review', // The bold "Continue"
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: ' to go back to the Review screen.', // Regular text after "Continue"
                                style: TextStyle(fontSize: 13),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        const Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Select ', // Regular text before "Continue"
                                style: TextStyle(fontSize: 13),
                              ),
                              TextSpan(
                                text: 'Return', // The bold "Continue"
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: ' to go to the last question in this section.', // Regular text after "Continue"
                                style: TextStyle(fontSize: 13),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        const Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Select ', // Regular text before "Continue"
                                style: TextStyle(fontSize: 13),
                              ),
                              TextSpan(
                                text: 'Continue', // The bold "Continue"
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: ' to proceed to the next section of the test.', // Regular text after "Continue"
                                style: TextStyle(fontSize: 13),
                              ),
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
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

