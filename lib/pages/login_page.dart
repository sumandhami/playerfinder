import 'package:flutter/material.dart';

import 'first_page.dart';
import 'signup_page.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Gradient background
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.green.withOpacity(0.6),
                  Colors.white.withOpacity(0.4),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          // Content
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Text with border
                    Stack(
                      children: [
                        // Border text
                        Text(
                          "FUTSAL PLAYER CONNECT",
                          style: TextStyle(
                            fontFamily: 'Kanit',
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2,
                            foreground: Paint()
                              ..style = PaintingStyle.stroke
                              ..strokeWidth = 4
                              ..color = Colors.black, // Border color
                          ),
                          textAlign: TextAlign.center,
                        ),
                        // Main text
                        Text(
                          "FUTSAL PLAYER CONNECT",
                          style: TextStyle(
                            fontFamily: 'Kanit',
                            fontStyle: FontStyle.normal,
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2,
                            color: Colors.white, // Text color
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Login to your account",
                      style: TextStyle(
                        fontFamily: 'Kanit',
                        fontSize: 17,
                        fontStyle: FontStyle.italic,
                        color: Colors.teal.shade900, // Updated color
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 50),
                    // Email Input
                    TextField(
                      controller: _emailController,
                      style: TextStyle(
                          color: Colors.grey.shade700,
                          fontFamily: 'Kanit',
                          fontSize: 18), // Updated text color
                      decoration: InputDecoration(
                        labelText: 'Email',
                        labelStyle: TextStyle(
                            color: Colors.blueGrey.shade900,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Kanit',
                            fontSize: 27), // Updated label color
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.blueGrey
                                  .shade900), // Updated underline color
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors
                                  .teal.shade900), // Updated underline color
                        ),
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                      ),
                    ),
                    SizedBox(height: 20),
                    // Password Input (Updated)
                    TextField(
                      controller: _passwordController,
                      obscureText: true,
                      style: TextStyle(
                          color: Colors.grey.shade700, // Updated text color
                          fontFamily: 'Kanit',
                          fontSize: 18), // Updated text color
                      decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle: TextStyle(
                          color: Colors
                              .blueGrey.shade900, // Consistent label color
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Kanit',
                          fontSize: 27, // Consistent label size
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.blueGrey
                                  .shade900), // Consistent underline color
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors
                                  .teal.shade900), // Consistent underline color
                        ),
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                      ),
                    ),
                    SizedBox(height: 30),
                    // Login Button
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.teal.shade600,
                        foregroundColor: Colors.white,
                        padding:
                            EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                        side: BorderSide(color: Colors.white, width: 2),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onPressed: () {
                        // Implement login functionality
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => My_Dashboard()),
                        );
                      },
                      child: Text(
                        "LOGIN",
                        style: TextStyle(
                          fontFamily: 'Kanit',
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    // Forgot Password Text (optional)
                    TextButton(
                      onPressed: () {
                        // Handle forgot password
                      },
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(
                            color: Colors.teal.shade900), // Updated color
                      ),
                    ),
                    SizedBox(height: 20),
                    // Sign Up Link
                    TextButton(
                      onPressed: () {
                        // Navigate to SignUpPage
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                SignUpPage(), // Replace with your actual SignUpPage
                          ),
                        );
                      },
                      child: Text(
                        "Don't have an account? Sign Up",
                        style: TextStyle(
                            color: Colors.teal.shade900), // Updated color
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
