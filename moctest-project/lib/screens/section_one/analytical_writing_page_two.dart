import 'package:flutter/material.dart';
import 'package:moctest_project/quit_page.dart';
import 'package:moctest_project/screens/section_one/question_one/question_one_help.dart';
import 'package:moctest_project/screens/section_one/question_one/question_one_home.dart';

import '../../help_page.dart';


class AnalyticalWritingPageTwo extends StatelessWidget {
  const AnalyticalWritingPageTwo({super.key});

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
                          SizedBox(width: 205),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: GestureDetector(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => QuitPage()),
                                );
                              },
                              child: Container(
                                color: Color(0xFF655060),
                                width: 100,
                                height: 50,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Quit w/Save',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15)),
                                    Icon(
                                      Icons.file_open_outlined,
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
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => QuestionOneHelp()),
                                );
                              },
                              child: Container(
                                color: Color(0xFF4D4C4D),
                                width: 70,
                                height: 50,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Help',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15)),
                                    Icon(
                                      Icons.help,
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
                              onTap: (){},
                              child: Container(
                                color: Color(0xFF303744),
                                width: 50,
                                height: 50,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Next',
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
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: GestureDetector(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => QuestionOneHome()),
                                );
                              },
                              child: Container(
                                color: Color(0xFF365E90),
                                width: 100,
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
                      child: Text("Section 1 to 5", style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
              padding: const EdgeInsets.only(left:90.0, right:90.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Analytical Writing",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  Text(
                    "Analyze An Issue Task",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Divider(
                    color: Colors.black38,
                  ),
                  SizedBox(height: 30),
                  Text(
                    'You will be given a brief quotation that states or implies an issue of general interest, and you will also be given specific instructions on how to respond to that issue. Standard timing for this task is 30 minutes. In that time you should plan and compose a response to the issue presented. A response to any other issue will receive a score of zero. Make sure that you respond according to the specific instructions and support your position on the issue with reasons and examples drawn from such areas as your reading, experience, observations, and/or academic studies.',
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(height: 15),
                  SizedBox(height: 10),
                  Text(
                    'Trained GRE readers will evaluate your response according to how well you:',
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.only(left:10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.circle, size: 10, color: Colors.black),
                        SizedBox(width: 6),
                        Expanded(
                          child: Text(
                            'Respond to the specific task instructions',
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left:10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 7.0),
                          child: Icon(Icons.circle, size: 10, color: Colors.black),
                        ),
                        SizedBox(width: 6),
                        Expanded(
                          child: Text(
                            'Consider the complexities of the issue',
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left:10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 6.0),
                          child: Icon(Icons.circle, size: 10, color: Colors.black),
                        ),
                        SizedBox(width: 6),
                        Expanded(
                          child: Text(
                            'Organize, develop, and express your ideas',
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left:10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 6.0),
                          child: Icon(Icons.circle, size: 10, color: Colors.black),
                        ),
                        SizedBox(width: 6),
                        Expanded(
                          child: Text(
                            'Support your position with relevant reasons and/or examples',
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left:10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 6.0),
                          child: Icon(Icons.circle, size: 10, color: Colors.black),
                        ),
                        SizedBox(width: 6),
                        Expanded(
                          child: Text(
                            'Control the elements of standard written English',
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Before you begin writing, you may want to think for a few minutes about the issue and the specific task instructions and then plan your response. Be sure to develop your position fully and organize it coherently, but leave time to reread what you have written and make any revisions you think are necessary.',
                    style: TextStyle(fontSize: 14),
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
                          text: ' to proceed. Timing for the task will start when you do so.', // Regular text after "Continue"
                          style: TextStyle(fontSize: 13),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
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
