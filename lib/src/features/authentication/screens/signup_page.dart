import 'package:flutter/material.dart';
import 'package:playerconnect/src/common_widgets/Validations/emailvalidation.dart';
import 'package:playerconnect/src/common_widgets/Validations/inputvalidation.dart';
import 'package:playerconnect/src/common_widgets/Validations/passwordvalidation.dart';
import 'package:playerconnect/src/common_widgets/Validations/phonenovalidation.dart';
import 'login/login_page.dart';
import '../../../pages/start_page.dart';

class SignUpPage extends StatefulWidget {
  SignUpPage({super.key});

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  //for validation
  final _formkey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _phoneController = TextEditingController();
  final _locationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // Gradient background
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  center: Alignment.center,
                  radius: 0.9,
                  colors: [
                    Color(0xFF2A3D4E),
                    Color(0xFF3B535F),
                    Color(0xFF4C6D7A),
                  ],
                  stops: [0.3, 0.7, 1.0],
                ),
              ),
            ),
            // Content
            Center(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: Form(
                  key: _formkey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // Text with border, same as login
                      Stack(
                        children: [
                          // Border text
                          Text(
                            "FUTSAL PLAYER CONNECT",
                            style: TextStyle(
                              fontFamily: 'Kanit',
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2,
                              foreground: Paint()
                                ..style = PaintingStyle.stroke
                                ..strokeWidth = 3
                                ..color = Colors.black,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          // Main text
                          Text(
                            "FUTSAL PLAYER CONNECT",
                            style: TextStyle(
                              fontFamily: 'Kanit',
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Sign in to your account",
                        style: TextStyle(
                          fontFamily: 'Kanit',
                          fontSize: 18,
                          fontStyle: FontStyle.italic,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 50),
                      // Name Input
                      Inputvalidation(
                          inputController: _nameController, labelText: "Name"),
                      SizedBox(height: 15),
                      // Email Input
                      Emailvalidation(
                          emailController: _emailController,
                          labelText: 'Email'),
                      SizedBox(height: 15),
                      // Phone Number Input
                      Phonenovalidation(
                          phoneController: _phoneController,
                          labelText: "Phone Number"),
                      SizedBox(height: 15),
                      // Location Input
                      Inputvalidation(
                          inputController: _locationController,
                          labelText: "Location"),
                      SizedBox(height: 15),
                      // Password Input
                      PasswordValidation(
                          controller: _passwordController,
                          labelText: "Password"),
                      SizedBox(height: 15),
                      // Confirm Password Input
                      PasswordValidation(
                        controller: _confirmPasswordController,
                        confirmPasswordController:
                            _passwordController, // Check against password
                        labelText: "Confirm Password",
                      ),
                      SizedBox(height: 30),
                      // Sign Up Button
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF65A3B8),
                          foregroundColor: Colors.white,
                          padding: EdgeInsets.symmetric(
                              horizontal: 50, vertical: 15),
                          side: BorderSide(color: Colors.white, width: 2),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          shadowColor: Colors.black,
                          elevation: 10,
                        ),
                        onPressed: () {
                          // Add sign-up functionality here
                          if (_formkey.currentState!.validate()) {
                            // Form is valid, proceed to the next page
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => StartingPage()),
                            );
                          }
                        },
                        child: Text(
                          "SIGN UP",
                          style: TextStyle(
                            fontFamily: 'Kanit',
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1,
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      // Already have an account? Login Link
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Loginpage()),
                          );
                        },
                        child: Text(
                          "Already have an account? Login",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
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
