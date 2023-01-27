import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../internal/hex2color.dart';
import '../controllers/quiz_controller.dart';

class QuizView extends GetView<QuizController> {
  const QuizView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    QuizController controller = Get.put(QuizController());
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
                  "Intro Quiz",
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
                          top: 40,
                          left: 26,
                          right: 26,
                        ),
                        child: SingleChildScrollView(
                          child: Obx(
                            () => Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Question ${controller.questionIndex + 1} of ${controller.questions.length}",
                                    ),
                                    Text("Score: ${controller.score}")
                                  ],
                                ),
                                const SizedBox(height: 20),
                                Text(
                                    controller
                                            .questions[controller.questionIndex]
                                        ["question"],
                                    style: const TextStyle(fontSize: 19)),
                                const SizedBox(height: 15),
                                GestureDetector(
                                  onTap: controller.playSound,
                                  child: Container(
                                      decoration: BoxDecoration(
                                        color: HexColor.fromHex("C4C4C4")
                                            .withOpacity(0.4),
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(15),
                                        ),
                                      ),
                                      child: const Padding(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 8.0, horizontal: 15),
                                        child: Text("Play",
                                            style: TextStyle(fontSize: 17)),
                                      )),
                                ),
                                const SizedBox(height: 20),
                                Column(
                                  children: (() {
                                    controller
                                        .questions[controller.questionIndex]
                                            ["variants"]
                                        .shuffle();
                                    return List.generate(
                                        controller
                                            .questions[controller.questionIndex]
                                                ["variants"]
                                            .length, (index) {
                                      return Column(
                                        children: [
                                          GestureDetector(
                                            onTap: () =>
                                                controller.sumbitAnswer(
                                                    controller.questions[
                                                            controller
                                                                .questionIndex]
                                                        ["variants"][index]),
                                            child: Container(
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                color:
                                                    HexColor.fromHex("C4C4C4")
                                                        .withOpacity(0.4),
                                                borderRadius:
                                                    const BorderRadius.all(
                                                  Radius.circular(15),
                                                ),
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(10.0),
                                                child: Row(
                                                  children: [
                                                    Text("${index + 1}."),
                                                    const SizedBox(
                                                      width: 10,
                                                    ),
                                                    Text(controller.questions[
                                                            controller
                                                                .questionIndex]
                                                        ["variants"][index])
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          )
                                        ],
                                      );
                                    });
                                  }()),
                                ),
                                SizedBox(
                                  height: Get.height / 65,
                                ),
                                Image.asset(
                                  controller.questions[controller.questionIndex]
                                      ["image"],
                                  width: Get.width / 2.4,
                                )
                              ],
                            ),
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
