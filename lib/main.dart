import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'login_page.dart';
import 'home_page.dart';

// The main function, which is the entry point of the application.
void main() async {
  // Ensure that Flutter is fully initialized before running any code.
  WidgetsFlutterBinding.ensureInitialized();
  // Initialize Firebase to make Firebase features available.
  await Firebase.initializeApp();
  // Retrieve the SharedPreferences instance to access stored data.
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  // Retrieve the stored email from SharedPreferences. This determines if the user is already logged in.
  final String? email = prefs.getString('email');
  // Run the app with the appropriate initial page (HomePage if logged in, otherwise LoginPage).
  runApp(MyApp(initialPage: email != null ? HomePage(email: email) : LoginPage()));
}

// MyApp widget, which is the root of the app.
class MyApp extends StatelessWidget {
  // This variable stores the initial page to show when the app starts (either HomePage or LoginPage).
  final Widget initialPage;

  // Constructor to accept the initial page as a parameter.
  MyApp({required this.initialPage});

  // Build method to set up the app's UI.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Disable the debug banner at the top-right corner of the app.
      debugShowCheckedModeBanner: false,
      // Set the title of the application.
      title: 'Flutter App',
      // Define the app's theme (primary color for the app).
      theme: ThemeData(
        primarySwatch: Colors.blue, // The primary color for the app's theme.
      ),
      // Set the initial screen for the app to be either the HomePage or LoginPage
      home: initialPage, // This determines which screen will show first.
    );
  }
}
