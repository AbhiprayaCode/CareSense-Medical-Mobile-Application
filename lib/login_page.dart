import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'home_page.dart';
import 'register_page.dart';

// The main StatefulWidget for the login page
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState(); // Create state for LoginPage
}

// The state class that holds the login page logic
class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController(); // Controller for the email input field
  final TextEditingController _passwordController = TextEditingController(); // Controller for the password input field

  // Function to save the user login session locally using SharedPreferences
  Future<void> _saveLoginSession(String email) async {
    SharedPreferences prefs = await SharedPreferences.getInstance(); // Get SharedPreferences instance
    await prefs.setString('email', email); // Save the email in shared preferences for future use
  }

  // Function to handle the login process using Firebase Authentication
  void _login() async {
    try {
      // Attempt to log in with email and password using FirebaseAuth
      final userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailController.text, // Get email from the controller
        password: _passwordController.text, // Get password from the controller
      );
      // Save the login session by storing the user's email
      await _saveLoginSession(userCredential.user!.email!);
      // Navigate to HomePage with the user's email passed as an argument
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomePage(email: userCredential.user!.email!)),
      );
    } catch (e) {
      // If login fails, show a SnackBar with an error message
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Login failed: $e')));
    }
  }

  // The build method defines the UI of the login page
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50], // Set the background color of the screen
      appBar: AppBar(
        title: Text('Login'),
        backgroundColor: Colors.blue[300],
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Set padding around the content
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch, // Align children widgets to stretch across the screen
          children: [
            // Welcome message at the top of the page
            Text(
              'Welcome Back!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blue[900]),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),

            // Email input field with a controller to handle the input
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                prefixIcon: Icon(Icons.email, color: Colors.blue[300]),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            SizedBox(height: 15),

            // Password input field, with the text obscured (for security)
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                prefixIcon: Icon(Icons.lock, color: Colors.blue[300]),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            SizedBox(height: 20),

            // Login button, when pressed will trigger the _login function
            ElevatedButton(
              onPressed: _login,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue[400],
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              ),
              child: Text('Login', style: TextStyle(fontSize: 18)),
            ),
            SizedBox(height: 10),

            // Text button to navigate to the register page if the user doesn't have an account
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage()));
              },
              child: Text(
                'Create an Account',
                style: TextStyle(color: Colors.blue[700]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
