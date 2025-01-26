import 'package:flutter/material.dart';
import 'login/login_page.dart';
import '../../../pages/start_page.dart';

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

  bool _obscurePassword = true;
  bool _obscureConfirmPassword = true;

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
                    _buildTextField(_nameController, 'Name'),
                    SizedBox(height: 15),
                    // Email Input
                    _buildTextField(_emailController, 'Email'),
                    SizedBox(height: 15),
                    // Phone Number Input
                    _buildTextField(_phoneController, 'Phone Number'),
                    SizedBox(height: 15),
                    // Location Input
                    _buildTextField(_locationController, 'Location'),
                    SizedBox(height: 15),
                    // Password Input
                    _buildPasswordField(_passwordController, 'Password'),
                    SizedBox(height: 15),
                    // Confirm Password Input
                    _buildPasswordField(
                        _confirmPasswordController, 'Confirm Password'),
                    SizedBox(height: 30),
                    // Sign Up Button
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF65A3B8),
                        foregroundColor: Colors.white,
                        padding:
                            EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                        side: BorderSide(color: Colors.white, width: 2),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        shadowColor: Colors.black,
                        elevation: 10,
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
                          color: Colors.white,
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

  // Text field builder for general fields
  Widget _buildTextField(TextEditingController controller, String labelText) {
    return TextField(
      controller: controller,
      style: TextStyle(
        color: Colors.grey.shade300,
        fontFamily: 'Kanit',
        fontSize: 18,
      ),
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontFamily: 'Kanit',
          fontSize: 22,
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      ),
    );
  }

  // Password field builder with eye icon
  Widget _buildPasswordField(
      TextEditingController controller, String labelText) {
    return TextField(
      controller: controller,
      obscureText:
          labelText == 'Password' ? _obscurePassword : _obscureConfirmPassword,
      style: TextStyle(
        color: Colors.grey.shade300,
        fontFamily: 'Kanit',
        fontSize: 18,
      ),
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontFamily: 'Kanit',
          fontSize: 22,
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        suffixIcon: IconButton(
          icon: Icon(
            labelText == 'Password'
                ? (_obscurePassword ? Icons.visibility_off : Icons.visibility)
                : (_obscureConfirmPassword
                    ? Icons.visibility_off
                    : Icons.visibility),
            color: Colors.white,
          ),
          onPressed: () {
            setState(() {
              if (labelText == 'Password') {
                _obscurePassword = !_obscurePassword;
              } else {
                _obscureConfirmPassword = !_obscureConfirmPassword;
              }
            });
          },
        ),
      ),
    );
  }
}
