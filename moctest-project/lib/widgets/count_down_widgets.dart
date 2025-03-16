// count_down_widgets.dart

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CountdownCard extends StatefulWidget {
  @override
  _CountdownCardState createState() => _CountdownCardState();
}

class _CountdownCardState extends State<CountdownCard> {
  DateTime endDate = DateTime(2025, 3, 24); // Countdown target date
  bool _isHovered = false; // Track hover state

  @override
  Widget build(BuildContext context) {
    Duration timeLeft = endDate.difference(DateTime.now());

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Container(
          width: 1000,
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // First row - Date and text
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.calendar_today, color: Colors.red),
                      SizedBox(height: 5),
                      Text(
                        "এনরোলমেন্ট শেষ",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        DateFormat('MMMM dd, yyyy').format(endDate),
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.calendar_today, color: Colors.green),
                      SizedBox(height: 5),
                      Text(
                        "ক্লাস শুরু",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "April 5, 2025",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),

              // Countdown Timer
              Column(
                children: [
                  Text(
                    "এনরোলমেন্ট শেষ হতে আর বাকি",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF583CEA)),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(child: CountdownItem(timeLeft.inDays, "Days")),
                      Expanded(child: CountdownItem(timeLeft.inHours % 24, "Hours")),
                      Expanded(child: CountdownItem(timeLeft.inMinutes % 60, "Minutes")),
                      Expanded(child: CountdownItem(timeLeft.inSeconds % 60, "Seconds")),
                    ],
                  ),
                ],
              ),

              SizedBox(height: 20),

              // Course fee text
              Center(
                child: Text(
                  "কোর্স ফি 6500 টাকা",
                  style: TextStyle(
                      fontSize: 25, fontWeight: FontWeight.bold, color: Color(0xFF583CEA)),
                ),
              ),
              SizedBox(height: 20),

              // Enroll button with hover effect
              Center(
                child: MouseRegion(
                  onEnter: (_) {
                    setState(() {
                      _isHovered = true; // Set hover state to true
                    });
                  },
                  onExit: (_) {
                    setState(() {
                      _isHovered = false; // Set hover state to false
                    });
                  },
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: _isHovered
                          ? Colors.white
                          : Color(0xFF583CEA), // Change background color on hover
                      foregroundColor:
                      _isHovered ? Color(0xFF583CEA) : Colors.white, // Change text color on hover
                      padding: EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                    ),
                    child: Text(
                      "Enroll Now",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Countdown Item widget
  Widget CountdownItem(int value, String label) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.blue.shade50,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Text(
            value.toString().padLeft(2, '0'),
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blue),
          ),
          Text(
            label,
            style: TextStyle(color: Colors.blue),
          ),
        ],
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
