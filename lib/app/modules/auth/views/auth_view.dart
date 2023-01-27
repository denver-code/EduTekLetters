import 'package:auth_buttons/auth_buttons.dart';
import 'package:edutek/app/internal/hex2color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/auth_controller.dart';

class AuthView extends GetView<AuthController> {
  const AuthView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AuthController controller = Get.put(AuthController());
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: Get.height / 25,
              ),
              Image.asset("assets/images/learn.png"),
              const SizedBox(
                height: 35,
              ),
              const Text(
                "Authorisation",
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              SizedBox(
                width: 270,
                child: Column(
                  children: [
                    AppleAuthButton(
                      onPressed: controller.notImplemented,
                      themeMode: ThemeMode.dark,
                      style: const AuthButtonStyle(
                        buttonColor: Colors.black,
                        width: double.infinity,
                        textStyle: TextStyle(
                          fontFamily: "Overpass",
                          color: Colors.white,
                          fontSize: 15,
                        ),
                        iconSize: 27,
                        padding: EdgeInsets.only(
                          top: 10,
                          left: 20,
                          right: 20,
                          bottom: 10,
                        ),
                        borderRadius: 2,
                        shadowColor: Colors.transparent,
                      ),
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    GoogleAuthButton(
                      onPressed: controller.notImplemented,
                      style: AuthButtonStyle(
                        width: double.infinity,
                        textStyle: TextStyle(
                          fontFamily: "Overpass",
                          color: HexColor.fromHex("#334155"),
                          fontSize: 15,
                        ),
                        iconSize: 25,
                        buttonColor: Colors.white,
                        padding: const EdgeInsets.only(
                          top: 10,
                          left: 20,
                          right: 20,
                          bottom: 9,
                        ),
                        borderRadius: 2,
                        shadowColor: Colors.transparent,
                        borderColor: HexColor.fromHex("#E2E8F0"),
                        borderWidth: 1,
                      ),
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    Row(
                      children: <Widget>[
                        const Expanded(child: Divider()),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Text(
                            "or",
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.5),
                            ),
                          ),
                        ),
                        const Expanded(child: Divider()),
                      ],
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    GestureDetector(
                      onTap: controller.offline,
                      child: const SizedBox(
                        width: double.infinity,
                        height: 25,
                        child: Center(
                          child: Text(
                            "Continue without authorisation",
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const Expanded(
                  child: SizedBox(
                height: double.infinity,
              )),
              Image.asset("assets/images/books.png"),
              const SizedBox(
                height: 5,
              ),
              Text(
                'Tip: auth used to keep your progress\n'
                'in cloud storage and restore it',
                style:
                    TextStyle(fontSize: 15, color: HexColor.fromHex("#515151")),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
