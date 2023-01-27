import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class MenuController extends GetxController {
  //TODO: Implement MenuController

  void lockedSection() {
    Get.snackbar(
      "EduTek Letters",
      "Section are locked, please earn enough crowns!",
      icon: const Icon(Icons.person, color: Colors.white),
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.grey,
    );
  }

  void loadSection() {
    Get.toNamed(Routes.SECTION_MENU);
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
