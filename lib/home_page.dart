
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'db_helper.dart';
import 'medicine_page.dart';
import 'apotex_page.dart';
import 'hospital_page.dart';
import 'pages/chat_page.dart';
import 'login_page.dart';

// HomePage widget takes an email parameter passed from the login or previous page
class HomePage extends StatefulWidget {
  final String email; // User's email passed to the home page
  final dbHelper = DBHelper(); // Instance of DBHelper to interact with the database

  HomePage({required this.email}); // Constructor that requires the email parameter

  @override
  _HomePageState createState() => _HomePageState(); // Creates the state for the HomePage
}

// State for HomePage, containing user data and actions like logout
class _HomePageState extends State<HomePage> {
  late Future<Map<String, dynamic>> _userData; // A future variable to fetch user data

  // Function to fetch user data (e.g., email and photo) from the database using DBHelper
  Future<Map<String, dynamic>> _getUserData() async {
    final photoPath = await widget.dbHelper.getPhoto(widget.email); // Fetch the photo path from the DBHelper
    return {
      'email': widget.email,
      'photo': photoPath,
    };
  }

  // Function to handle user logout
  Future<void> _logout() async {
    SharedPreferences prefs = await SharedPreferences.getInstance(); // Get shared preferences instance
    await prefs.remove('email'); // Remove the saved email from shared preferences (logging out)
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()), // Redirect to the login page
    );
  }

  @override
  void initState() {
    super.initState();
    _userData = _getUserData(); // Call the method to fetch user data when the state is initialized
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        backgroundColor: Colors.blue[400],
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.logout, color: Colors.white),
            onPressed: _logout,
          ),
        ],
      ),

      // The body of the Home Page is a FutureBuilder that waits for user data to be loaded
      body: FutureBuilder(
        future: _userData, // Fetch user data asynchronously
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(child: CircularProgressIndicator());
          }
          final userData = snapshot.data as Map<String, dynamic>; // Store the fetched user data
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    userData['photo'] != null
                        ? CircleAvatar(
                      backgroundImage: FileImage(File(userData['photo'])),
                      radius: 40,
                    )
                        : CircleAvatar(
                      radius: 40,
                      child: Icon(Icons.person, size: 40, color: Colors.white),
                    ),
                    SizedBox(width: 10),
                    Text(
                      userData['email'],
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue[900]),
                    ),
                  ],
                ),
              ),

              // Grid section for navigation to other pages
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  padding: EdgeInsets.all(16),
                  children: [
                    _buildHomeButton(
                      context,
                      'Medicine',
                      Icons.local_pharmacy,
                      MedicinePage(),
                      Colors.green[200]!,
                    ),
                    _buildHomeButton(
                      context,
                      'Apotex',
                      Icons.medical_services,
                      ApotexPage(),
                      Colors.teal[200]!,
                    ),
                    _buildHomeButton(
                      context,
                      'Hospital',
                      Icons.local_hospital,
                      HospitalPage(),
                      Colors.blue[200]!,
                    ),
                    _buildHomeButton(
                      context,
                      'Chatbox',
                      Icons.chat_bubble,
                      ChatPage(),
                      Colors.purple[200]!,
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  // A helper method to build each button in the grid
  Widget _buildHomeButton(
      BuildContext context, String label, IconData icon, Widget page, Color bgColor) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
      child: Card(
        color: bgColor,
        elevation: 6,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 50, color: Colors.white),
            SizedBox(height: 10),
            Text(
              label,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
