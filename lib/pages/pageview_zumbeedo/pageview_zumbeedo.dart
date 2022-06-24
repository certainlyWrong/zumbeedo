import 'package:flutter/material.dart';
import 'package:zumbeedo/pages/home/home_page.dart';
import 'package:zumbeedo/pages/historic/historic_page.dart';
import 'package:zumbeedo/global/widgets/zumbeedo_navagation_bar.dart';

class ZumbeedoPage extends StatelessWidget {
  const ZumbeedoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PageController controller = PageController(
      initialPage: 1,
      keepPage: true,
    );

    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        PageView(
          physics: const AlwaysScrollableScrollPhysics(),
          controller: controller,
          children: const [
            HistoricPage(),
            HomePage(),
          ],
        ),
        ZumbeedoNavigator(pageController: controller),
      ],
    );
  }
}
