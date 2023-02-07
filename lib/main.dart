// Import all external packages for our application
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// Importing our all pages routes
import 'app/routes/app_pages.dart';

// Creating a entry-point of our application
void main() {
  // Calling runApp flutter function
  runApp(
    // Create new annonymous MaterialApp instance and pass to our app
    GetMaterialApp(
      title: "Application", // Title of out application
      initialRoute: AppPages.INITIAL, // Setting up our initial route
      getPages: AppPages.routes, // Set all our routes written in app_pages module to app
      debugShowCheckedModeBanner: false, // Disable debug banner
      theme: ThemeData( // Add new default theme values
        fontFamily: "Overpass", // Set default font for application
        scaffoldBackgroundColor: Colors.white, // Set default color of Scaffold(page body)
      ),
    ),
  );
}
