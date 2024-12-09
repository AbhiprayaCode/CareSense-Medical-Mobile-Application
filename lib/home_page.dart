import 'dart:io';
import 'package:flutter/material.dart';
import 'package:medicine_ketiga/pages/chat_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'db_helper.dart';
import 'medicine_page.dart';
import 'apotex_page.dart';
import 'hospital_page.dart';
import 'pages/chat_page.dart';
import 'login_page.dart';

class HomePage extends StatefulWidget {
  final String email;
  final dbHelper = DBHelper();

  HomePage({required this.email});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<Map<String, dynamic>> _userData;

  Future<Map<String, dynamic>> _getUserData() async {
    final photoPath = await widget.dbHelper.getPhoto(widget.email);
    return {
      'email': widget.email,
      'photo': photoPath,
    };
  }

  Future<void> _logout() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('email');
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()),
    );
  }

  @override
  void initState() {
    super.initState();
    _userData = _getUserData();
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
      body: FutureBuilder(
        future: _userData,
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(child: CircularProgressIndicator());
          }
          final userData = snapshot.data as Map<String, dynamic>;
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
