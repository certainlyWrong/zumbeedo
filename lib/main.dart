import 'global/utils/themes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/foundation.dart';
import 'package:zumbeedo/pages/home/home_page.dart';
import 'package:zumbeedo/pages/splash/splash_page.dart';
import 'package:zumbeedo/repositories/historic_repository_local.dart';
import 'package:zumbeedo/pages/pageview_zumbeedo/pageview_zumbeedo.dart';

void main() {
  if (kDebugMode) {
    debugRepaintRainbowEnabled = true;
    // debugProfilePaintsEnabled = true;
    // debugProfileBuildsEnabled = true;
    // debugPrintMarkNeedsPaintStacks = true;
  }
  runApp(const Init());
}

class Init extends StatelessWidget {
  const Init({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<HistoricRepositoryLocal>(
            create: (_) => HistoricRepositoryLocal()),
      ],
      child: MaterialApp(
        theme: zumbeedoLightTheme,
        darkTheme: zumbeedoDarkTheme,
        themeMode: ThemeMode.light,
        initialRoute: '/',
        routes: {
          '/': (_) => const SplashPage(),
          '/home': (_) => const HomePage(),
          '/zumbeedo': (_) => const ZumbeedoPage(),
        },
      ),
    );
  }
}
