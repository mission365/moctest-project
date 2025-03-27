import 'package:flutter/material.dart';

import '../Question3/question_three.dart';
import '../Question5/question_five.dart';
import '../Question5/question_five_help.dart';
import '../exit_section.dart';
import '../help_page.dart';
import '../quit_page.dart';
import '../review_page.dart';

class QuestionFour extends StatefulWidget {
  const QuestionFour({super.key});

  @override
  _TestCenterState createState() => _TestCenterState();
}

class _TestCenterState extends State<QuestionFour> {
  // Add separate variables for each blank
  String? selectedOption;

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
                                  MaterialPageRoute(builder: (context) => QuestionFive()),
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
                            text: ' | Question 4 of 12', // The bold "Continue"
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
                            height: 1000,  // Set the height of the container
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
                                  child: Text("Question 4 based on this passage.", style: TextStyle(color: Colors.white, fontSize: 10),),
                                ),
                                SizedBox(height: 10,),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Even after numerous products made with artificial sweeteners became available, sugar consumption per capita continued to rise. Now manufacturers are introducing fat-free versions of various foods that they claim have the taste and texture of the traditional high-fat versions. Even if the manufacturers' claim is true, given that the availability of sugar-free foods did not reduce sugar consumption, it is unlikely that the availability of these fat-free foods will reduce fat consumption."),
                                ),
                              ],
                            )
                          ),
                        ),
                        SizedBox(width: 2,),
                        Flexible(
                          child: Container(
                            width: 465,  // Set the width of the container
                            height: 1000,  // Set the height of the container
                            decoration: BoxDecoration(
                              border: Border.all(  // Set the border style
                                color: Colors.black,  // Border color
                                width: 0.5,  // Border width
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                children: [
                                  Text(
                                    'Which of the following, if true, most seriously undermines the argument?',
                                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 20),
                                  _buildOption(
                                      'Several kinds of fat substitute are available to manufacturers, each of which gives a noticeably different taste and texture to products that contain it.',
                                      'option1'),
                                  SizedBox(height: 15,),
                                  _buildOption(
                                      'The products made with artificial sweeteners did not taste like products made with sugar.',
                                      'option2'),
                                  SizedBox(height: 15,),
                                  _buildOption(
                                      'The foods brought out in sugar-free versions did not generally have reduced levels of fat, but many of the fat-free versions about to be introduced are low in sugar.',
                                      'option3'),
                                  SizedBox(height: 15,),
                                  _buildOption(
                                      'People who regularly consume products containing artificial sweeteners are more likely than others to consume fat-free foods.',
                                      'option4'),
                                  SizedBox(height: 15,),
                                  _buildOption(
                                      'Not all foods containing fat can be produced in fat-free versions.',
                                      'option5'),
                                  SizedBox(height: 400,),
                                  Container(
                                    width: 290,
                                    color: Colors.grey,
                                    height: 40,
                                    child: Center(child: Text("Select one answer choice.", style: TextStyle(fontSize: 17))),
                                  ),
                                ],
                              ),
                            )
                          ),
                        )
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

  Widget _buildOption(String optionText, String optionValue) {
    bool isSelected = selectedOption == optionValue;

    return GestureDetector(
      onTap: () {
        setState(() {
          // Toggle selection: if the option is already selected, deselect it; otherwise, select it
          if (isSelected) {
            selectedOption = null;
          } else {
            selectedOption = optionValue;
          }
        });
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.black,
                width: 2,
              ),
              color: isSelected ? Colors.black : Colors.white, // Fill with black when selected
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Text(
              optionText,
              style: TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }

}
