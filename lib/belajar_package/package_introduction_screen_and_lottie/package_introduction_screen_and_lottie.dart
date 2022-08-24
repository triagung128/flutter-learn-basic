import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:lottie/lottie.dart';

import 'login.dart';

class PackageIntroductionScreenAndLottie extends StatelessWidget {
  const PackageIntroductionScreenAndLottie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      globalBackgroundColor: Colors.white,
      pages: [
        PageViewModel(
          title: "Title of first page",
          body:
              "Here you can write the description of the page, to explain someting...",
          image: Center(
            child: Lottie.asset(
              "assets/lotties/small-shop.json",
              height: 300,
            ),
          ),
        ),
        PageViewModel(
          title: "Title of second page",
          body:
              "Here you can write the description of the page, to explain someting...",
          image: Center(
            child: Lottie.asset(
              "assets/lotties/secure-login.json",
              height: 300,
            ),
          ),
        ),
      ],
      onDone: () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => const Login(),
          ),
        );
      },
      onSkip: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const Login(),
          ),
        );
      },
      showBackButton: false,
      showSkipButton: true,
      skip: const Text("Skip"),
      done: const Text(
        "Done",
        style: TextStyle(
          fontWeight: FontWeight.w600,
        ),
      ),
      next: const Icon(Icons.arrow_forward),
    );
  }
}
