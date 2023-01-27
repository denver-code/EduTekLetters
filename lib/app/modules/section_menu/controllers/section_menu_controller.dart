import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class SectionMenuController extends GetxController {
  //TODO: Implement SectionMenuController

  void completedPart() {
    Get.snackbar(
      "EduTek Letters",
      "Part are completed, you can clear your progress or complete other parts!",
      icon: const Icon(Icons.person, color: Colors.white),
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.grey,
    );
  }

  void startQuiz() {
    Get.toNamed(Routes.QUIZ);
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
