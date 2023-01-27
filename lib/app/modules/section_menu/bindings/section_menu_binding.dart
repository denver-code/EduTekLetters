import 'package:get/get.dart';

import '../controllers/section_menu_controller.dart';

class SectionMenuBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SectionMenuController>(
      () => SectionMenuController(),
    );
  }
}
