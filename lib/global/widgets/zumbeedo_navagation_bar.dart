import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ZumbeedoNavigator extends StatefulWidget {
  const ZumbeedoNavigator({Key? key}) : super(key: key);

  @override
  State<ZumbeedoNavigator> createState() => _ZumbeedoNavigatorState();
}

class _ZumbeedoNavigatorState extends State<ZumbeedoNavigator> {
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
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(color: Colors.orange, spreadRadius: 2, blurRadius: 1),
              ],
            ),
            width: 10,
            height: 10,
          ),
          const Spacer(flex: 1),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.orange,
              boxShadow: const [
                BoxShadow(color: Colors.orange, spreadRadius: 2, blurRadius: 1),
              ],
            ),
            width: 10,
            height: 10,
          ),
          const Spacer(flex: 1),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(color: Colors.orange, spreadRadius: 2, blurRadius: 1),
              ],
            ),
            width: 10,
            height: 10,
          ),
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
