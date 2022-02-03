import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokedex_app/controllers/splash_controller.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      init: SplashController(),
      builder: (_) {
        return Scaffold(
            body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            SizedBox(
              height: 180,
            ),
            Container(
              margin: EdgeInsets.only(bottom: 100),
              child: Image.asset(
                'assets/images/logo.png',
                width: 350,
              ),
            ),
            Container(
              height: 30,
              child: DefaultTextStyle(
                style: const TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.normal,
                    color: Colors.black),
                child: AnimatedTextKit(
                  animatedTexts: [
                    FadeAnimatedText('Be the very best!',
                        duration: Duration(milliseconds: 1000)),
                    FadeAnimatedText('Catch \'em all!',
                        duration: Duration(milliseconds: 1000)),
                    FadeAnimatedText('And train them!',
                        duration: Duration(milliseconds: 1000)),
                  ],
                  pause: Duration(milliseconds: 500),
                  totalRepeatCount: 1,
                  onTap: () {
                    print("Tap Event");
                  },
                ),
              ),
            )
          ]),
        ));
      },
    );
  }
}
