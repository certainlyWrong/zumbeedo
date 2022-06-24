import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';

class ZumbeedoNavigator extends StatefulWidget {
  final PageController pageController;
  const ZumbeedoNavigator({Key? key, required this.pageController})
      : super(key: key);

  @override
  State<ZumbeedoNavigator> createState() => _ZumbeedoNavigatorState();
}

class _ZumbeedoNavigatorState extends State<ZumbeedoNavigator> {
  late List<Widget> navCircles;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      child: Row(
        children: const [
          NavButton(
              pathIcon: "assets/icons/noun_History_3324817.svg",
              label: "Historic"),
        ],
      ),
    );
  }
}

class NavButton extends StatefulWidget {
  final String pathIcon, label;
  const NavButton({Key? key, required this.pathIcon, required this.label})
      : super(key: key);

  @override
  State<NavButton> createState() => _NavButtonState();
}

class _NavButtonState extends State<NavButton> {
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SvgPicture.asset(
              widget.pathIcon,
              color: const Color(0xff6B5A56),
            ),
            Text(
              widget.label,
              style: const TextStyle(
                fontSize: 10,
                color: Color(0xff6B5A56),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
