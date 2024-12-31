import 'package:flutter/material.dart';
import 'login_page.dart';
import 'start_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
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
                gradient: LinearGradient(
                  colors: [
                    Colors.green.shade700.withOpacity(0.6),
                    Colors.white.withOpacity(0.4),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
            ),
            // Content
            Center(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
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
                        color: Colors.teal.shade900,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 10),
                    // Name Input
                    _buildTextField(_nameController, 'Name'),
                    SizedBox(height: 5),
                    // Email Input
                    _buildTextField(_emailController, 'Email'),
                    SizedBox(height: 5),
                    // Phone Number Input
                    _buildTextField(_phoneController, 'Phone Number'),
                    SizedBox(height: 5),
                    // Location Input
                    _buildTextField(_locationController, 'Location'),
                    SizedBox(height: 5),
                    // Password Input
                    _buildTextField(_passwordController, 'Password',
                        obscureText: true),
                    SizedBox(height: 5),
                    // Confirm Password Input
                    _buildTextField(
                        _confirmPasswordController, 'Confirm Password',
                        obscureText: true),
                    SizedBox(height: 30),
                    // Sign Up Button
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.teal.shade600,
                        foregroundColor: Colors.white,
                        padding:
                            EdgeInsets.symmetric(horizontal: 50, vertical: 16),
                        side: BorderSide(color: Colors.white, width: 2),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onPressed: () {
                        // Add sign-up functionality here
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => StartingPage()),
                        );
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
                          MaterialPageRoute(builder: (context) => Loginpage()),
                        );
                      },
                      child: Text(
                        "Already have an account? Login",
                        style: TextStyle(
                          color: Colors.teal.shade600,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Text field builder to keep the original design from LoginPage
  Widget _buildTextField(TextEditingController controller, String labelText,
      {bool obscureText = false}) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      style: TextStyle(
          color: Colors.grey.shade700, fontFamily: 'Kanit', fontSize: 18),
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: TextStyle(
          color: Colors.blueGrey.shade900,
          fontWeight: FontWeight.bold,
          fontFamily: 'Kanit',
          fontSize: 22,
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.blueGrey.shade900),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.teal.shade900),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 14),
      ),
    );
  }
}
