import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ZumbeedoNavigator extends StatefulWidget {
  final int index;

  const ZumbeedoNavigator({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  State<ZumbeedoNavigator> createState() => _ZumbeedoNavigatorState();
}

class _ZumbeedoNavigatorState extends State<ZumbeedoNavigator> {
  late List<Widget> navCircles;

  @override
  void initState() {
    navCircles = List.generate(
      3,
      (index) => Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: widget.index == index ? Colors.orange : Colors.white,
            boxShadow: const [
              BoxShadow(color: Colors.orange, spreadRadius: 2, blurRadius: 1),
            ],
          ),
          width: 12,
          height: 12,
        ),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset("assets/icons/noun_History_3324817.svg"),
              const Text("History")
            ],
          ),
          const Spacer(flex: 10),
          ...navCircles,
          const Spacer(flex: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                  "/home/adriano/Documentos/SaveTheWorld/zumbeedo/assets/icons/Question_Mark.svg"),
              const Text("Help")
            ],
          ),
        ],
      ),
    );
  }
}
