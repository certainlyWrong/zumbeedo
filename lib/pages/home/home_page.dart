import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rive/rive.dart' as rive;
import 'package:flutter_svg/flutter_svg.dart';

import '../../global/widgets/zumbeedo_navagation_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ValueNotifier<bool> menu = ValueNotifier<bool>(false);
  late PageController pageController;

  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.immersiveSticky,
      overlays: [],
    );
    pageController = PageController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar:
      //     zumbeedoNavigationBar(selectedIndex: 1, context: context),
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.white,
              Color(0xffFFF0D3),
              // Color.fromARGB(255, 247, 166, 0),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(
              flex: 1,
            ),
            FittedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    "assets/logo.svg",
                    fit: BoxFit.fitWidth,
                    width: 70,
                  ),
                  SvgPicture.asset(
                    "assets/logo_name.svg",
                    fit: BoxFit.fitWidth,
                    width: 120,
                  ),
                ],
              ),
            ),
            const Spacer(flex: 5),
            FittedBox(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: RichText(
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    text: "Toque no botão abaixo para",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff6B5A56),
                    ),
                    children: [
                      TextSpan(
                        text: "\nouvir sua colmeia!",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff6B5A56),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Spacer(flex: 1),
            Stack(
              alignment: Alignment.center,
              children: [
                Opacity(
                  opacity: 0.2,
                  child: FittedBox(
                    child: SvgPicture.asset(
                      "assets/logo.svg",
                      fit: BoxFit.fitWidth,
                      width: 400,
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width > 400
                      ? 400 * 0.6
                      : MediaQuery.of(context).size.width * 0.6,
                  height: MediaQuery.of(context).size.width > 400
                      ? 400 * 0.6
                      : MediaQuery.of(context).size.width * 0.6,
                  child: GestureDetector(
                    onTap: (() {}),
                    child: const RepaintBoundary(
                      child: rive.RiveAnimation.asset(
                        "assets/animates/recording.riv",
                        animations: ["Start"],
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(flex: 10),
            const ZumbeedoNavigator(),
          ],
        ),
      ),
    );
  }
}
