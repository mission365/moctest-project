import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QuestionCard extends StatelessWidget {
  final String title;
  // final String price;
  final IconData icon;
  final VoidCallback onTap;

  QuestionCard({required this.title, required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 350,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF0A2C4E), Color(0xFF4E92C4)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 40, color: Colors.white),
          SizedBox(height: 10),
          Text(title, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
          SizedBox(height: 10),
          // Text(price, style: TextStyle(color: Colors.white)),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: onTap,
            child: Text('Open Now'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: Color(0xFF0A2C4E),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ],
      ),
    );
  }
}