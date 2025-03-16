import 'package:flutter/material.dart';
import 'package:moctest_project/screens/gre_home_screen.dart';
import '../signup_page/signup_page.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1E3A47),
      body: SingleChildScrollView(  // Wrap the entire body in SingleChildScrollView to handle overflow
        child: Center( // Center the content in the screen
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Align(  // Align widget to center the Card
              alignment: Alignment.center,  // Center the card horizontally and vertically
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                elevation: 8,
                child: Container(
                  padding: EdgeInsets.all(32),
                  constraints: BoxConstraints(maxWidth: 400), // Max width to prevent content from stretching too far on larger screens
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          'ETS Sign In',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'If you have an existing account, sign in using your credentials below.',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                      SizedBox(height: 20),
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Username*',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 16),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Password*',
                          border: OutlineInputBorder(),
                          suffixIcon: Icon(Icons.visibility),
                        ),
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('Sign In'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF0000FF), // Your desired color
                          minimumSize: Size(double.infinity, 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => GreHomeScreen(),  // Replace NewPage() with your target page
                            ),
                          );
                        },
                        child: Text('GO'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green, // You can choose any color here
                          minimumSize: Size(double.infinity, 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Text('Forgot Password?'),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text('Forgot Username?'),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Divider(),
                      SizedBox(height: 10),
                      Center(
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignUpPage(),
                              ),
                            );
                          },
                          child: Text('Create Account'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
