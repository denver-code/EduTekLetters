// Importing all needed libraries for our Auth controller
import 'package:edutek/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  // Function used for inform user that function are not implemented yes
  void notImplemented() {
    // Show snackbar using GetX state-management framework
    Get.snackbar(
      "EduTek Letters", // Title of snackbar
      "OAuth are not implemented yet, please use app without authorisation(offline mode)", // Snackbar body text
      icon: const Icon(Icons.person, color: Colors.white), // Icon of snackbar
      snackPosition: SnackPosition.BOTTOM, // Position of our snackbar on a screen
      backgroundColor: Colors.grey, // Background color of our snackbar
    );
  }

  // Logic for fast-offline authorisation
  void offline() {
    // Move to next page via route with removing all previous pages
    Get.offNamed(Routes.MENU);
  }
}
