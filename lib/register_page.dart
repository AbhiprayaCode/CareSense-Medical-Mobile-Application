import 'dart:io';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:image_picker/image_picker.dart';
import 'db_helper.dart';

// RegisterPage widget where users can register their accounts
class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  // Controllers for user input fields (Name, Email, Password)
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  // Variable to store the captured image
  File? _image;
  // Instance of ImagePicker to pick images from the camera
  final picker = ImagePicker();
  // Database helper instance for saving user information
  final dbHelper = DBHelper();

  // Method to pick an image using the camera
  Future<void> _pickImage() async {
    // Use the image picker to capture an image from the camera
    final pickedFile = await picker.pickImage(source: ImageSource.camera);
    // If an image is picked, store it in the _image variable
    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  // Method to handle user registration
  void _register() async {
    // Check if the user has selected an image
    if (_image == null) {
      // Show a message if no image is selected
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please capture an image')),
      );
      return;
    }
    try {
      // Register the user with Firebase Authentication using email and password
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );
      // Save the captured image in the database using the user's email as an identifier
      await dbHelper.savePhoto(_emailController.text, _image!.path);
      // After successful registration, pop the registration page (return to previous screen)
      Navigator.pop(context);
    } catch (e) {
      // Show an error message if the registration fails
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Registration failed: $e')),
      );
    }
  }

  // Build method to create the UI of the registration page
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50], // Set background color
      appBar: AppBar(
        title: Text('Register'),
        backgroundColor: Colors.blue[300],
        centerTitle: true,
      ),
      // Body of the page is wrapped in a SingleChildScrollView to allow scrolling when keyboard appears
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Title text at the top of the page
            Text(
              'Create Your Account',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blue[900],
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            // TextField for entering name
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: 'Name',
                prefixIcon: Icon(Icons.person, color: Colors.blue[300]),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            SizedBox(height: 10),// Vertical spacing

            // TextField for entering email
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
            SizedBox(height: 10),
            // TextField for entering password
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
            // Display the captured image or a message if no image is selected
            Center(
              child: _image == null
                  ? Text(
                'No image selected',
                style: TextStyle(color: Colors.blueGrey),
              )
                  : ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.file(
                  _image!,
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 20),
            // Button to capture image using the camera
            ElevatedButton(
              onPressed: _pickImage,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue[400],
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              ),
              child: Text('Capture Image'),
            ),
            SizedBox(height: 10),
            // Button to register the user
            ElevatedButton(
              onPressed: _register,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue[700],
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              ),
              child: Text('Register', style: TextStyle(fontSize: 18)),
            ),
          ],
        ),
      ),
    );
  }
}