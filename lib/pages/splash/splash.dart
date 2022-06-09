import 'package:page_transition/page_transition.dart';
import 'package:rive/rive.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

import '../home/home.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.immersiveSticky,
      overlays: [],
    );

    Future.delayed(const Duration(seconds: 3)).then((value) {
      // Navigator.of(context).pushNamedAndRemoveUntil('/home', (route) => false);
      Navigator.of(context).pushAndRemoveUntil(
        PageTransition(
          child: const HomePage(),
          type: PageTransitionType.bottomToTop,
          alignment: Alignment.bottomCenter,
          duration: const Duration(milliseconds: 500),
        ),
        (_) => false,
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.of(context).pushAndRemoveUntil(
            PageTransition(
              child: const HomePage(),
              type: PageTransitionType.bottomToTop,
              alignment: Alignment.bottomCenter,
              duration: const Duration(milliseconds: 500),
            ),
            (_) => false,
          );
        },
        child: Container(
          color: Theme.of(context).colorScheme.background,
          child: Column(
            children: const [
              Spacer(flex: 10),
              Center(
                child: SizedBox(
                  width: 350,
                  height: 350,
                  child: RiveAnimation.asset(
                    'assets/animates/zumbeedo_logo.riv',
                    animations: ['Start'],
                  ),
                ),
              ),
              Spacer(flex: 9),
              Text("Zumbeedo"),
              Spacer(flex: 1),
            ],
          ),
        ),
      ),
    );
  }
}
