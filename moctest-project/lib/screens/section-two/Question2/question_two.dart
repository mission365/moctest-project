import 'package:flutter/material.dart';
import 'package:moctest_project/screens/section-two/Question1/question_one.dart';
import '../../section_one/question_one/question_one_help.dart';
import '../Question3/question_three.dart';
import '../exit_section.dart';
import '../help_page.dart';
import '../quit_page.dart';
import '../review_page.dart';

class QuestionTwo extends StatefulWidget {
  const QuestionTwo({super.key});

  @override
  _TestCenterState createState() => _TestCenterState();
}

class _TestCenterState extends State<QuestionTwo> {
  // Track selected options for each blank
  String? selectedOptionBlankI;
  String? selectedOptionBlankII;

  bool isChecked = false;
  final TextEditingController _controller = TextEditingController();

  // Stores the state of questions (marked and selected answers)
  Map<int, bool> markedQuestions = {};
  Map<int, String?> selectedAnswers = {};

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
                    padding: EdgeInsets.only(left: 20),
                    height: 60,
                    color: Color(0xFF393736),
                    width: double.infinity,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: '*gre. ', // Regular text before "Continue"
                                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.white),
                                ),
                                TextSpan(
                                  text: 'POWERPREP Online Untimed Test', // The bold "Continue"
                                  style: TextStyle(
                                      fontSize: 13, fontWeight: FontWeight.bold, color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 112),
                          //exit section
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => ExitSection() ),
                                );
                              },
                              child: Container(
                                color: Color(0xFF655060),
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
                                      Icons.exit_to_app_outlined,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),

                          //quit w/save
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => QuitPage() ),
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

                          //mark
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Container(
                              color: Color(0xFF4D4C4D),
                              width: 70,
                              height: 50,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Mark',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                  SizedBox(width: 5), // Add some space between text and checkbox
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isChecked = !isChecked; // Toggle checkbox state
                                      });
                                    },
                                    child: Icon(
                                      isChecked
                                          ? Icons.check_box // Checked icon
                                          : Icons.check_box_outline_blank, // Unchecked icon
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          //review
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

                          //help
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => QuestionOneHelp() ),
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

                          //back
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => QuestionOne()),
                                );
                              },
                              child: Container(
                                color: Color(0xFF365E90),
                                width: 50,
                                height: 50,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Back',
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

                          //next
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => QuestionThree() ),
                                );
                              },
                              child: Container(
                                color: Color(0xFF365E90),
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
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 4, left: 8),
                    height: 30,
                    color: Color(0xFFF0E1E4),
                    width: double.infinity,
                    child:  const Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Section 2 of 5', // Regular text before "Continue"
                            style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: ' | Question 2 of 12', // The bold "Continue"
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 600,
                          color: Colors.grey,
                          height: 60,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("For each blank select one entry from the corresponding column of choices. Fill all blanks in the way that best completes the text.", style: TextStyle(fontSize: 17)),
                          ),
                        ),
                        SizedBox(height: 100),
                        Text(
                          "Given how (i) __________, the shortcomings of the standard economic model are in its portrayal of human behavior, the failure of many economists to respond to them is astonishing. They continue to fill the journals with yet more proofs of yet more (ii) __________ theorems. Others, by contrast, accept the criticisms as a challenge, seeking to expand the basic model to embrace a wider range of things people do.",
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(height: 40),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Text("Blank (i)", style: TextStyle(fontWeight: FontWeight.bold)),
                                SizedBox(height: 10),
                                _buildOption("overlooked", 'i'),
                                _buildOption("occasional", 'i'),
                                _buildOption("patent", 'i'),
                              ],
                            ),
                            SizedBox(width: 15),
                            Column(
                              children: [
                                Text("Blank (ii)", style: TextStyle(fontWeight: FontWeight.bold)),
                                SizedBox(height: 10),
                                _buildOption("comprehensive", 'ii'),
                                _buildOption("improbable", 'ii'),
                                _buildOption("pervasive", 'ii'),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 250),
                        Container(
                          width: 290,
                          color: Colors.grey,
                          height: 40,
                          child: Center(child: Text("Select one entry from each column.", style: TextStyle(fontSize: 17))),
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

  Widget _buildOption(String option, String blank) {
    bool isSelected;

    // Check which blank this option belongs to and set the selection state
    if (blank == 'i') {
      isSelected = selectedOptionBlankI == option;
    } else {
      isSelected = selectedOptionBlankII == option;
    }

    return GestureDetector(
      onTap: () {
        setState(() {
          // Toggle the selection state based on which blank is clicked
          if (blank == 'i') {
            // If the same option is clicked again, deselect it
            if (selectedOptionBlankI == option) {
              selectedOptionBlankI = null;
            } else {
              selectedOptionBlankI = option;
            }
          } else {
            // If the same option is clicked again, deselect it
            if (selectedOptionBlankII == option) {
              selectedOptionBlankII = null;
            } else {
              selectedOptionBlankII = option;
            }
          }
        });
      },
      child: Container(
        width: 250,
        decoration: BoxDecoration(
          color: isSelected ? Colors.black : Colors.white,
          border: Border.all(color: Colors.black),
        ),
        child: Center(
          child: Text(
            option,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: isSelected ? Colors.white : Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
