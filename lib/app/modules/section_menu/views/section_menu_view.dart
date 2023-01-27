import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../internal/hex2color.dart';
import '../controllers/section_menu_controller.dart';

class SectionMenuView extends GetView<SectionMenuController> {
  const SectionMenuView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SectionMenuController controller = Get.put(SectionMenuController());
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(color: HexColor.fromHex("#353535")),
            width: double.infinity,
            height: Get.height / 6.3,
            child: Padding(
              padding: EdgeInsets.only(top: Get.height / 35),
              child: const Center(
                child: Text(
                  "Logical reasoning",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(top: Get.height / 7.5, bottom: Get.height / 33),
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25)),
              ),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 30,
                          left: 26,
                          right: 26,
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/images/horse_unit1.png",
                                scale: 2,
                              ),
                              SizedBox(
                                height: Get.height / 20,
                              ),
                              GestureDetector(
                                onTap: controller.startQuiz,
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "assets/images/pencil_unit1.png",
                                      scale: 2,
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const Text(
                                      "Intro",
                                      style: TextStyle(fontSize: 15),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: Get.height / 40,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  GestureDetector(
                                    onTap: controller.completedPart,
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          "assets/images/book_unit1.png",
                                          scale: 2,
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        const Text(
                                          "Phrases",
                                          style: TextStyle(fontSize: 15),
                                        )
                                      ],
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: controller.completedPart,
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          "assets/images/bicycle_unit1.png",
                                          scale: 2,
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        const Text(
                                          "Travel",
                                          style: TextStyle(fontSize: 15),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Image.asset("assets/images/books.png"),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
