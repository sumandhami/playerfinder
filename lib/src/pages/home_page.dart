import 'package:flutter/material.dart';
import 'package:playerconnect/src/features/authentication/screens/create_request/create_request.dart';
import 'package:playerconnect/src/features/authentication/screens/join_request/join_request.dart';
import 'package:playerconnect/src/pages/map_page.dart';

class My_HomePage extends StatefulWidget {
  const My_HomePage({super.key});

  @override
  _My_HomePageState createState() => _My_HomePageState();
}

class _My_HomePageState extends State<My_HomePage> {
  bool _isOnline = false; // Default is offline

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back)),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MapPage(),
                ),
              );
            },
            icon: Icon(Icons.location_on),
          ),
        ],
        backgroundColor:
            Color(0xFF1B2A41), // Dark greenish background for app bar
        foregroundColor: Colors.grey.shade300,
      ),
      body: SafeArea(
        child: Stack(
          children: [
            // Gradient background with green variations
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  center: Alignment.center,
                  radius: 0.9,
                  colors: [
                    Color(0xFF1B2A41),
                    Color(0xFF23395B),
                    Color(0xFF2D4A69),
                  ],
                  stops: [0.3, 0.7, 1.0],
                ),
              ),
            ),

            // Profile Card
            SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  // Profile Section
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(18.0),
                    decoration: BoxDecoration(
                      gradient: RadialGradient(
                        center: Alignment.center,
                        radius: 0.8,
                        colors: [
                          Color(0xFF23395B),
                          Color(0xFF2D4A69),
                        ],
                        stops: [0.3, 1.0],
                      ),
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          blurRadius: 15,
                          spreadRadius: 3,
                          offset: const Offset(0, 6),
                        ),
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Profile Picture
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.white,
                              width: 2,
                            ),
                            image: const DecorationImage(
                              image:
                                  AssetImage('assets/images/futsaluser.jpeg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),

                        // User Details
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Suman Dhami",
                                style: TextStyle(
                                  fontFamily: 'Kanit',
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  shadows: [
                                    Shadow(
                                      offset: Offset(1.5, 1.5),
                                      blurRadius: 4,
                                      color: Colors.black.withOpacity(0.5),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                "Location: Kathmandu",
                                style: TextStyle(
                                  fontFamily: 'Kanit',
                                  fontSize: 18,
                                  color: Colors.white70,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                "Contact: +977-9801234567",
                                style: TextStyle(
                                  fontFamily: 'Kanit',
                                  fontSize: 18,
                                  color: Colors.white70,
                                ),
                              ),
                              const SizedBox(height: 12),
                              // Toggle for Online/Offline Status
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    _isOnline ? "Online" : "Offline",
                                    style: TextStyle(
                                      fontFamily: 'Kanit',
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Switch(
                                    value: _isOnline,
                                    onChanged: (value) {
                                      setState(() {
                                        _isOnline = value;
                                      });
                                    },
                                    activeColor:
                                        Color(0xFF65A3B8), // Online color
                                    inactiveTrackColor: Color(0xFF4C6D7A),
                                    inactiveThumbColor: Colors.white,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Buttons Section
                  Column(
                    children: [
                      _buildSteamStyledButton(
                        context,
                        "Create Request",
                        Icons.add_circle_outline,
                        () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CreateRequest(),
                            ),
                          );
                        },
                      ),
                      const SizedBox(height: 12),
                      _buildSteamStyledButton(
                        context,
                        "Join Request",
                        Icons.group,
                        () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => JoinRequest(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSteamStyledButton(BuildContext context, String title,
      IconData icon, VoidCallback onPressed) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFF65A3B8),
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        side: const BorderSide(color: Colors.white, width: 2),
        shadowColor: Colors.black,
        elevation: 10,
        minimumSize: const Size(double.infinity, 60),
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(icon, size: 24, color: Colors.white),
          const SizedBox(width: 12),
          Text(
            title,
            style: const TextStyle(
              fontFamily: 'Kanit',
              fontSize: 18,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
            ),
          ),
        ],
      ),
    );
  }
}
