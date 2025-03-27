import 'package:flutter/material.dart';
import '../Question4/question_four.dart';
import '../Question4/question_four_help.dart';
import '../Question6/question_six.dart';
import '../exit_section.dart';
import '../help_page.dart';
import '../quit_page.dart';
import '../review_page.dart';

class QuestionFive extends StatefulWidget {
  const QuestionFive({super.key});

  @override
  _TestCenterState createState() => _TestCenterState();
}

class _TestCenterState extends State<QuestionFive> {
  // List to store the lines of the passage
  List<String> passageLines = [
    "Historians frequently employ probate inventories—lists of possessions compiled after a person’s death—to estimate standard of living.",
    "Because these inventories were taken by amateur assessors according to unwritten rules, they are sometimes unreliable.",
    "One way to check their accuracy is to compare them to archaeological records.",
    "A study of records from the state of Delaware in the eighteenth century found that while very few inventories listed earthenware, every excavation contained earthenware.",
    "Earthenware may have gone unlisted simply because it was inexpensive.",
    "But if it was so commonplace, why was it listed more often for wealthy households?",
    "Perhaps the more earthenware people had, the more likely appraisers were to note it.",
    "A few bowls could easily be absorbed into another category, but a roomful of earthenware could not."
  ];

  // Variable to keep track of the selected option (index of the selected line)
  int? selectedOptionIndex;

  bool isChecked = false;
  final TextEditingController _controller = TextEditingController();

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
                                  MaterialPageRoute(builder: (context) => QuestionFourHelp() ),
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
                                  MaterialPageRoute(builder: (context) => QuestionFour() ),
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
                                  MaterialPageRoute(builder: (context) => QuestionSix()),
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
                            text: ' | Question 5 of 12', // The bold "Continue"
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
                    padding: const EdgeInsets.all(2.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Flexible(
                          child: Container(
                              width: 465,  // Set the width of the container
                              height: 700,  // Set the height of the container
                              decoration: BoxDecoration(
                                border: Border.all(  // Set the border style
                                  color: Colors.black,  // Border color
                                  width: 0.5,  // Border width
                                ),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    color: Color(0xFF000080),
                                    width: 463,
                                    height: 15,
                                    child: Text("Question 5 based on this passage.", style: TextStyle(color: Colors.white, fontSize: 10),),
                                  ),
                                  SizedBox(height: 10,),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: List.generate(passageLines.length, (index) {
                                        return GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              if (selectedOptionIndex == index) {
                                                selectedOptionIndex = null; // Deselect if clicked again
                                              } else {
                                                selectedOptionIndex = index; // Select this option
                                              }
                                            });
                                          },
                                          child: Container(
                                            color: selectedOptionIndex == index ? Colors.black : Colors.white,
                                            padding: EdgeInsets.all(8.0),
                                            child: Text(
                                              passageLines[index],
                                              style: TextStyle(
                                                color: selectedOptionIndex == index ? Colors.white : Colors.black,
                                              ),
                                            ),
                                          ),
                                        );
                                      }),
                                    ),
                                  ),
                                ],
                              )
                          ),
                        ),
                        Flexible(
                          child: Container(
                              width: 465,  // Set the width of the container
                              height: 700,  // Set the height of the container
                              decoration: BoxDecoration(
                                border: Border.all(  // Set the border style
                                  color: Colors.black,  // Border color
                                  width: 0.5,  // Border width
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Text(
                                      'Select the sentence that provides support for an answer to a question in the passage.',
                                      style: TextStyle(fontSize: 16,),
                                    ),
                                    SizedBox(height: 550,),
                                    Container(
                                      width: 290,
                                      color: Colors.grey,
                                      height: 40,
                                      child: Center(child: Text("Select a sentence in the passage.", style: TextStyle(fontSize: 17))),
                                    ),
                                  ],
                                ),
                              )
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
