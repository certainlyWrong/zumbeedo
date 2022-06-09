import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rive/rive.dart' as rive;
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zumbeedo/widgets/navagation_bar.dart';

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
      bottomNavigationBar:
          zumbeedoNavigationBar(selectedIndex: 1, context: context),
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.orange.shade50,
              Colors.orange.shade300,
            ],
          ),
        ),
        child: Column(
          children: [
            Column(
              children: [
                SvgPicture.asset(
                  "assets/logo.svg",
                  fit: BoxFit.fitWidth,
                  width: 100,
                ),
                const Text(
                  "Zumbeedo",
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
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
            const Card(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Precione para gravar!"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
