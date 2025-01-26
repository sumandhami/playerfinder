import 'package:flutter/material.dart';
import 'package:playerconnect/src/features/authentication/screens/forgotpass/forgotpass.dart';
import 'package:playerconnect/src/features/authentication/screens/signup_page.dart';
import 'package:playerconnect/src/pages/home_page.dart';
import 'package:playerconnect/src/pages/map_page.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _obscureText = true; // State variable to control password visibility

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            // Gradient background matching home page
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  center: Alignment.center,
                  radius: 0.9,
                  colors: [
                    Color(0xFF2A3D4E), // Dark green center
                    Color(0xFF3B535F), // Slightly lighter green for edges
                    Color(0xFF4C6D7A), // Light greenish tone for outer edges
                  ],
                  stops: [0.3, 0.7, 1.0],
                ),
              ),
            ),
            // Content (login form)
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(height: 20),
                      // Text with border (consistent with profile card on home page)
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
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2,
                              color: Colors.white, // Text color
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Text(
                        "Login to your account",
                        style: TextStyle(
                          fontFamily: 'Kanit',
                          fontSize: 17,
                          fontStyle: FontStyle.italic,
                          color: Colors.white, // Subtle text color
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 50),
                      // Email Input
                      TextField(
                        controller: _emailController,
                        style: TextStyle(
                            color: Colors.grey.shade300,
                            fontFamily: 'Kanit',
                            fontSize: 18), // Consistent text color
                        decoration: InputDecoration(
                          labelText: 'Email',
                          labelStyle: TextStyle(
                            color: Colors.white, // Consistent label color
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Kanit',
                            fontSize: 22, // Consistent label size
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color:
                                    Colors.white), // Consistent underline color
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color:
                                    Colors.white), // Consistent underline color
                          ),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 12, horizontal: 16),
                        ),
                      ),
                      const SizedBox(height: 20),
                      // Password Input with Eye Icon
                      TextField(
                        controller: _passwordController,
                        obscureText: _obscureText,
                        style: TextStyle(
                            color:
                                Colors.grey.shade300, // Consistent text color
                            fontFamily: 'Kanit',
                            fontSize: 18),
                        decoration: InputDecoration(
                          labelText: 'Password',
                          labelStyle: TextStyle(
                            color: Colors.white, // Consistent label color
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Kanit',
                            fontSize: 22, // Consistent label size
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color:
                                    Colors.white), // Consistent underline color
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color:
                                    Colors.white), // Consistent underline color
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              _obscureText
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              setState(() {
                                _obscureText =
                                    !_obscureText; // Toggle password visibility
                              });
                            },
                          ),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 12, horizontal: 16),
                        ),
                      ),
                      const SizedBox(height: 30),
                      // Login Button
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              Color(0xFF65A3B8), // Consistent button color
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
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => My_HomePage()),
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
                      const SizedBox(height: 20),
                      // Forgot Password Link
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Forgotpass(),
                            ),
                          );
                        },
                        child: Text(
                          "Forgot Password?",
                          style: TextStyle(
                              color: Colors.white), // Consistent color
                        ),
                      ),
                      const SizedBox(height: 20),
                      // Sign Up Link
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignUpPage(),
                            ),
                          );
                        },
                        child: Text(
                          "Don't have an account? Sign Up",
                          style: TextStyle(
                              color: Colors.white), // Consistent color
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
