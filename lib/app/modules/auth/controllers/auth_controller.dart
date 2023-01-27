import 'package:edutek/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  //TODO: Implement AuthController

  void notImplemented() {
    Get.snackbar(
      "EduTek Letters",
      "OAuth are not implemented yet, please use app without authorisation(offline mode)",
      icon: const Icon(Icons.person, color: Colors.white),
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.grey,
    );
  }

  void offline() {
    Get.offNamed(Routes.MENU);
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
