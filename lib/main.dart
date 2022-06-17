import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/foundation.dart';
import 'package:zumbeedo/utils/themes.dart';
import 'package:zumbeedo/pages/home/home.dart';
import 'package:zumbeedo/pages/splash/splash.dart';

void main() {
  if (kDebugMode) {
    debugRepaintRainbowEnabled = true;
    // debugProfilePaintsEnabled = true;
    // debugProfileBuildsEnabled = true;
    // debugPrintMarkNeedsPaintStacks = true;
  }
  runApp(const Init());
}

class Init extends StatefulWidget {
  const Init({Key? key}) : super(key: key);

  @override
  State<Init> createState() => _InitState();
}

class _InitState extends State<Init> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: zumbeedoLightTheme,
      darkTheme: zumbeedoDarkTheme,
      themeMode: ThemeMode.light,
      initialRoute: '/',
      routes: {
        '/': (_) => const SplashPage(),
        '/home': (_) => const HomePage(),
      },
    );
  }
}
