import 'package:flutter/material.dart';

import 'Question1/question_one.dart';


class ReviewPage extends StatefulWidget {
  const ReviewPage({super.key});

  @override
  State<ReviewPage> createState() => _HelpPageState();
}

class _HelpPageState extends State<ReviewPage> {

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
                          SizedBox(width: 305),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: GestureDetector(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => QuestionOne()),
                                );
                              },
                              child: Container(
                                color: Color(0xFF365E90),
                                width: 100,
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
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => QuestionOne()),
                                );
                              },
                              child: Container(
                                color: Color(0xFF365E90),
                                width: 130,
                                height: 50,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Go to Question',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15)),
                                    Icon(
                                      Icons.blur_circular_sharp,
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
                  ),
                  SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.only(left:90.0, right:90.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Review",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Divider(
                          color: Colors.black38,
                        ),
                        SizedBox(height: 30),
                        const Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'This page presents information about questions in the current section. You may sort the questions by ', // Regular text before "Continue"
                                style: TextStyle(fontSize: 13),
                              ),
                              TextSpan(
                                text: 'Number, Status, ', // The bold "Continue"
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: 'and ', // Regular text after "Continue"
                                style: TextStyle(fontSize: 13),
                              ),
                              TextSpan(
                                text: 'Marked. ', // The bold "Continue"
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: 'The question you were on is selected and highlighted by default. Questions you have encountered have a status of ', // The bold "Continue"
                                style: TextStyle(
                                    fontSize: 13,),
                              ),
                              TextSpan(
                                text: 'Answered, Incomplete, ', // The bold "Continue"
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: 'or ', // The bold "Continue"
                                style: TextStyle(
                                    fontSize: 13),
                              ),
                              TextSpan(
                                text: 'Not Answered. ', // The bold "Continue"
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: 'An ', // The bold "Continue"
                                style: TextStyle(
                                    fontSize: 13,),
                              ),
                              TextSpan(
                                text: 'incomplete ', // The bold "Continue"
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: 'status indicates you have selected more or fewer options than the question requires. Questions you have not encountered have a status of ', // The bold "Continue"
                                style: TextStyle(
                                    fontSize: 13,),
                              ),
                              TextSpan(
                                text: 'Not Encountered. ', // The bold "Continue"
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: 'Marked questions are indicated with a ', // The bold "Continue"
                                style: TextStyle(
                                    fontSize: 13,),
                              ),
                              TextSpan(
                                text: '✔.', // The bold "Continue"
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        Text.rich(
                            TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'To return to the question you were on, select ', // Regular text before "Continue"
                                    style: TextStyle(fontSize: 13),
                                  ),TextSpan(
                                    text: 'Return. ', // Regular text before "Continue"
                                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                                  ),
                                  TextSpan(
                                    text: 'To go to a different question, select that question and select ', // Regular text before "Continue"
                                    style: TextStyle(fontSize: 13),
                                  ),
                                  TextSpan(
                                    text: 'Go to Question. ', // Regular text before "Continue"
                                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                                  ),
                                  TextSpan(
                                    text: 'You will be unable to go to questions that have a status of ', // Regular text before "Continue"
                                    style: TextStyle(fontSize: 13,),
                                  ),
                                  TextSpan(
                                    text: 'Not Encountered.', // Regular text before "Continue"
                                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                                  ),
                                ]
                            )
                        ),
                        SizedBox(height: 80),
                        Row(
                          children: [
                            // First Table
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('First 6 Rows Sorted by Number in Ascending Order', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                                  DataTable(
                                    columns: const [
                                      DataColumn(label: Text('Number')),
                                      DataColumn(label: Text('Status')),
                                      DataColumn(label: Text('Marked')),
                                    ],
                                    rows: const [
                                      DataRow(cells: [
                                        DataCell(Text('1')),
                                        DataCell(Text('Not Answered')),
                                        DataCell(Text('')),
                                      ]),
                                      DataRow(cells: [
                                        DataCell(Text('2')),
                                        DataCell(Text('Not Encountered')),
                                        DataCell(Text('')),
                                      ]),
                                      DataRow(cells: [
                                        DataCell(Text('3')),
                                        DataCell(Text('Not Encountered')),
                                        DataCell(Text('')),
                                      ]),
                                      DataRow(cells: [
                                        DataCell(Text('4')),
                                        DataCell(Text('Not Encountered')),
                                        DataCell(Text('')),
                                      ]),
                                      DataRow(cells: [
                                        DataCell(Text('5')),
                                        DataCell(Text('Not Encountered')),
                                        DataCell(Text('')),
                                      ]),
                                      DataRow(cells: [
                                        DataCell(Text('6')),
                                        DataCell(Text('Not Encountered')),
                                        DataCell(Text('')),
                                      ]),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            // Spacer between tables
                            SizedBox(width: 10),
                            // Second Table
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Last 6 Rows Sorted by Number in Ascending Order', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                                  DataTable(
                                    columns: const [
                                      DataColumn(label: Text('Number')),
                                      DataColumn(label: Text('Status')),
                                      DataColumn(label: Text('Marked')),
                                    ],
                                    rows: const [
                                      DataRow(cells: [
                                        DataCell(Text('7')),
                                        DataCell(Text('Not Encountered')),
                                        DataCell(Text('')),
                                      ]),
                                      DataRow(cells: [
                                        DataCell(Text('8')),
                                        DataCell(Text('Not Encountered')),
                                        DataCell(Text('')),
                                      ]),
                                      DataRow(cells: [
                                        DataCell(Text('9')),
                                        DataCell(Text('Not Encountered')),
                                        DataCell(Text('')),
                                      ]),
                                      DataRow(cells: [
                                        DataCell(Text('10')),
                                        DataCell(Text('Not Encountered')),
                                        DataCell(Text('')),
                                      ]),
                                      DataRow(cells: [
                                        DataCell(Text('11')),
                                        DataCell(Text('Not Encountered')),
                                        DataCell(Text('')),
                                      ]),
                                      DataRow(cells: [
                                        DataCell(Text('12')),
                                        DataCell(Text('Not Encountered')),
                                        DataCell(Text('')),
                                      ]),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
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
                                text: ' to proceed.', // Regular text after "Continue"
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

