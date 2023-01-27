import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../internal/hex2color.dart';
import '../controllers/menu_controller.dart';

class MenuView extends GetView<MenuController> {
  const MenuView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    MenuController controller = Get.put(MenuController());
    return Scaffold(
      // backgroundColor: HexColor.fromHex("#353535"),
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
                  "Select Unit",
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
                          top: 69,
                          left: 26,
                          right: 26,
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Column(
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      const Text(
                                        "Logical reasoning",
                                        style: TextStyle(fontSize: 25),
                                      ),
                                      const Expanded(
                                        child: SizedBox(
                                          width: double.infinity,
                                        ),
                                      ),
                                      Image.asset(
                                        "assets/images/crown.png",
                                        width: 28,
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "18/40",
                                        style: TextStyle(
                                          fontSize: 17,
                                          color: Colors.black.withOpacity(0.5),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      GestureDetector(
                                        onTap: controller.loadSection,
                                        child: Container(
                                          width: 160,
                                          height: 200,
                                          decoration: BoxDecoration(
                                            color: HexColor.fromHex("#C4C4C4")
                                                .withOpacity(0.4),
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(20)),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(15.0),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                const Text(
                                                  "Unit 1",
                                                  style: TextStyle(
                                                    fontSize: 25,
                                                  ),
                                                ),
                                                Image.asset(
                                                  "assets/images/mind.png",
                                                  width: 100,
                                                ),
                                                Image.asset(
                                                    "assets/images/progress.png"),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: controller.lockedSection,
                                        child: Container(
                                          width: 160,
                                          height: 200,
                                          decoration: BoxDecoration(
                                            color: HexColor.fromHex("#C4C4C4")
                                                .withOpacity(0.4),
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(20)),
                                          ),
                                          child: Image.asset(
                                            "assets/images/lock.png",
                                            scale: 2,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 22,
                              ),
                              Column(
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      const Text(
                                        "Artistic thinking",
                                        style: TextStyle(fontSize: 25),
                                      ),
                                      const Expanded(
                                        child: SizedBox(
                                          width: double.infinity,
                                        ),
                                      ),
                                      Image.asset(
                                        "assets/images/crown.png",
                                        width: 28,
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "0/40",
                                        style: TextStyle(
                                          fontSize: 17,
                                          color: Colors.black.withOpacity(0.5),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      GestureDetector(
                                        onTap: controller.lockedSection,
                                        child: Container(
                                          width: 160,
                                          height: 200,
                                          decoration: BoxDecoration(
                                            color: HexColor.fromHex("#C4C4C4")
                                                .withOpacity(0.4),
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(20)),
                                          ),
                                          child: Image.asset(
                                            "assets/images/lock.png",
                                            scale: 2,
                                          ),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: controller.lockedSection,
                                        child: Container(
                                          width: 160,
                                          height: 200,
                                          decoration: BoxDecoration(
                                            color: HexColor.fromHex("#C4C4C4")
                                                .withOpacity(0.4),
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(20)),
                                          ),
                                          child: Image.asset(
                                            "assets/images/lock.png",
                                            scale: 2,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    // const Expanded(
                    //     child: SizedBox(
                    //   height: double.infinity,
                    // )),
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
