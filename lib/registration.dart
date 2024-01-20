import 'package:flutter/material.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.black, Colors.blueGrey], // Background colors
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // First Part
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  // Logo
                  FlutterLogo(
                    size: 100,
                  ),
                  SizedBox(height: 10),
                  // Text "Get Started"
                  Text(
                    "Get Started",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 5),
                  // Text "Let's create an account"
                  Text(
                    "Let's create an account",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            // Second Part
            Container(
              decoration: BoxDecoration(
                color: Colors.blue[900],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Username with icon
                  _buildInputField("Username", Icons.person),
                  SizedBox(height: 10),
                  // Email with icon
                  _buildInputField("Email", Icons.email),
                  SizedBox(height: 10),
                  // Password with icon
                  _buildInputField("Password", Icons.lock),
                  SizedBox(height: 10),
                  // Elevated button
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: Text("Create Account"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInputField(String label, IconData icon) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.blue[900]),
          SizedBox(width: 10),
          Expanded(
            child: TextFormField(
              style: TextStyle(color: Colors.blue[900]),
              decoration: InputDecoration(
                labelText: label,
                labelStyle: TextStyle(color: Colors.blue[900]),
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
