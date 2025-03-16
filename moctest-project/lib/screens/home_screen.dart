import 'package:flutter/material.dart';
import 'package:moctest_project/screens/signin_page/signin_page.dart';
import 'package:moctest_project/screens/signup_page/signup_page.dart';
import 'package:moctest_project/widgets/count_down_widgets.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fixed Container',
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            // Content below the fixed container
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height:100),
                  // Just to show scrolling content below the fixed container
                  Padding(
                    padding: const EdgeInsets.only(left: 170.0, right: 170),
                    child: Row(
                      children: [
                        // First container (Text content)
                        Expanded(
                          child: SingleChildScrollView( // This ensures the content can scroll when needed
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Build Your',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 50,
                                  ),
                                ),
                                Text(
                                  'Higher Study Foundation',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 50,
                                  ),
                                ),
                                Text(
                                  'With Us!',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 50,
                                  ),
                                ),
                                Text(
                                  'Take Exam And Go Abroad',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30,
                                  ),
                                ),
                                Text(
                                  'Learn and Master GRE and IELTS, Real Question GRE Mock Solutions, Sop Writing, CV writing, Lor Writing, University searching, Study abroad guidelines.',
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                                SizedBox(height: 20),
                                // Row with buttons
                                Row(
                                  children: [
                                    Expanded(
                                      child: HoverButton(
                                        text: 'Enroll Now',
                                        onTap: () {
                                          // Handle Enroll Now action
                                        },
                                        normalColor: Color(0xFF583CEA),
                                        hoverColor: Colors.white,
                                        textColor: Colors.white,
                                      ),
                                    ),
                                    SizedBox(width: 20),
                                    Expanded(
                                      child: HoverButton(
                                        text: 'Watch Now',
                                        onTap: () {
                                          // Handle Watch Now action
                                        },
                                        normalColor: Color(0xFF583CEA),
                                        hoverColor: Colors.white,
                                        textColor: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 20),
                        // Second container (Image content)
                        Expanded(
                          child: Container(
                            height: 600, // Set desired height
                            width: double.infinity, // Ensure the width fills the space
                            child: Image.asset(
                              'assets/images/moc1.jpg', // Replace with your image path
                              fit: BoxFit.cover, // Ensures the image scales to fit the container size
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                  SizedBox(height:60),

                  CountdownCard(),
                ],
              ),
            ),
            // Fixed Container at the top
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                color: Colors.white,
                width: double.infinity, // Infinity width
                height: 90.0, // Fixed height of 90
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal, // Enable horizontal scrolling
                  child: Padding(
                    padding: const EdgeInsets.only(left: 150, right: 120),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        // Logo before the text
                        Image.asset(
                          'assets/images/moc.jpg', // Replace with your logo file path
                          height: 90, // Set the desired logo height
                        ),
                        SizedBox(width: 70),
                        // Text widgets with hover effect
                        GestureDetector(
                          onTap: () {
                            // Handle click event
                          },
                          child: HoverText(text: 'হোম'),
                        ),
                        SizedBox(width: 35),
                        GestureDetector(
                          onTap: () {
                            // Handle click event
                          },
                          child: HoverText(text: 'কোর্সসমূহ'),
                        ),
                        SizedBox(width: 35),
                        GestureDetector(
                          onTap: () {
                            // Handle click event
                          },
                          child: HoverText(text: 'স্টাডি এবরোড'),
                        ),
                        SizedBox(width: 35),
                        GestureDetector(
                          onTap: () {
                            // Handle click event
                          },
                          child: HoverText(text: 'রাইটিং হেল্প'),
                        ),
                        SizedBox(width: 35),
                        GestureDetector(
                          onTap: () {
                            // Handle click event
                          },
                          child: HoverText(text: 'আমাদের বিস্তারিত'),
                        ),
                        SizedBox(width: 35),
                        GestureDetector(
                          onTap: () {
                            // Handle click event
                          },
                          child: HoverText(text: 'মক প্রশ্ন'),
                        ),
                        SizedBox(width: 35),
                        GestureDetector(
                          onTap: () {
                            // Handle click event
                          },
                          child: HoverText(text: 'সফলতার গল্প'),
                        ),
                        SizedBox(width: 35),
                        // Buttons inside Containers with border
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                // Handle login
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SignInPage(),
                                  ),
                                );

                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black), // Border color
                                  borderRadius: BorderRadius.circular(8), // Rounded corners
                                ),
                                child: Text(
                                  'লগইন',
                                  style: TextStyle(
                                    color: Colors.black, // Text color
                                    fontWeight: FontWeight.bold, // Bold text
                                    fontSize: 16, // Font size
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            GestureDetector(
                              onTap: () {
                                // Handle registration
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SignUpPage(),
                                  ),
                                );
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                                decoration: BoxDecoration(
                                  color: Color(0xFF583CEA), // Purple background color
                                  borderRadius: BorderRadius.circular(8), // Rounded corners
                                ),
                                child: Text(
                                  'রেজিস্ট্রেশন',
                                  style: TextStyle(
                                    color: Colors.white, // Text color
                                    fontWeight: FontWeight.bold, // Bold text
                                    fontSize: 16, // Font size
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HoverText extends StatefulWidget {
  final String text;

  HoverText({required this.text});

  @override
  _HoverTextState createState() => _HoverTextState();
}

class _HoverTextState extends State<HoverText> {
  Color textColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          textColor = Color(0xFF583CEA); // Change color to purple on hover
        });
      },
      onExit: (_) {
        setState(() {
          textColor = Colors.black; // Revert color when not hovered
        });
      },
      child: Text(
        widget.text,
        style: TextStyle(color: textColor, fontSize: 18, fontWeight: FontWeight.bold), // Increased font size and bold weight
      ),
    );
  }
}

class HoverButton extends StatefulWidget {
  final String text;
  final VoidCallback onTap;
  final Color normalColor;
  final Color hoverColor;
  final Color textColor;

  HoverButton({
    required this.text,
    required this.onTap,
    required this.normalColor,
    required this.hoverColor,
    required this.textColor,
  });

  @override
  _HoverButtonState createState() => _HoverButtonState();
}

class _HoverButtonState extends State<HoverButton> {
  Color _buttonColor = Colors.orange; // Default color
  Color _textColor = Colors.white; // Default text color

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          _buttonColor = widget.hoverColor; // Change background color on hover
          _textColor = widget.normalColor; // Set text color to normal color on hover
        });
      },
      onExit: (_) {
        setState(() {
          _buttonColor = widget.normalColor; // Revert background color when not hovered
          _textColor = widget.textColor; // Revert text color to the initial text color
        });
      },
      child: GestureDetector(
        onTap: widget.onTap,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          decoration: BoxDecoration(
            color: _buttonColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Text(
              widget.text,
              style: TextStyle(
                color: _textColor, // Text color changes on hover
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
