import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QuizController extends GetxController {
  var score = 0.obs;
  final AudioPlayer player = AudioPlayer();

  var _questionIndex = 0.obs;
  int get questionIndex => _questionIndex.value;

  List questions = [
    {
      "question": "What is the letter you hear?",
      "audio": "audio/A.mp3",
      "correct": "A",
      "variants": ["A", "B", "C", "D"],
      "image": "assets/images/apple.png"
    },
    {
      "question": "What is the letter you hear?",
      "audio": "audio/B.mp3",
      "correct": "B",
      "variants": ["E", "B", "R", "S"],
      "image": "assets/images/ball.png"
    },
    {
      "question": "What is the letter you hear?",
      "audio": "audio/C.mp3",
      "correct": "C",
      "variants": ["X", "Z", "C", "A"],
      "image": "assets/images/car.png"
    },
    {
      "question": "What is the letter you hear?",
      "audio": "audio/I.mp3",
      "correct": "I",
      "variants": ["S", "G", "A", "I"],
      "image": "assets/images/icecream.png"
    },
    {
      "question": "What is the letter you hear?",
      "audio": "audio/Q.mp3",
      "correct": "Q",
      "variants": ["Q", "G", "B", "L"],
      "image": "assets/images/queen.png"
    },
    {
      "question": "What is the letter you hear?",
      "audio": "audio/V.mp3",
      "correct": "V",
      "variants": ["V", "X", "Q", "T"],
      "image": "assets/images/vegetables.png"
    },
  ];

  void playSound() {
    player.play(AssetSource(questions[questionIndex]["audio"]));
  }

  sumbitAnswer(String answer) {
    if (questions[questionIndex]["correct"] == answer) {
      incrementScore();
    }

    if (questions.asMap().containsKey(questionIndex + 1)) {
      _questionIndex++;
    } else {
      Get.back();
      Get.defaultDialog(
          title: "EduTek Letters",
          middleText: "Congratulations! Your final score are: $score");
      Get.snackbar(
        "EduTek Letters",
        "Congratulations! Your final score are: $score",
        icon: const Icon(Icons.person, color: Colors.white),
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.grey,
      );
    }
  }

  void incrementScore() => score++;

  @override
  void onInit() {
    super.onInit();
    questions.shuffle();
  }
}
