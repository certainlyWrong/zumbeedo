import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:zumbeedo/pages/historic/historic.dart';
import 'package:zumbeedo/pages/home/home.dart';
import 'package:zumbeedo/pages/introduction/introduction.dart';

Widget zumbeedoNavigationBar({
  required BuildContext context,
  required int selectedIndex,
}) {
  return RepaintBoundary(
    child: NavigationBar(
      labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
      selectedIndex: selectedIndex,
      onDestinationSelected: (int i) {
        List<Widget> pages = const [
          HistoricPage(),
          HomePage(),
          IntroductionPage()
        ];

        if (selectedIndex != i) {
          Navigator.of(context).push(
            PageTransition(
                child: pages[i], type: PageTransitionType.bottomToTop),
          );
        }
      },
      destinations: const [
        NavigationDestination(icon: Icon(Icons.history), label: 'Historico'),
        NavigationDestination(
            icon: Icon(Icons.radio_button_checked_rounded), label: 'Gravar'),
        NavigationDestination(icon: Icon(Icons.book), label: 'Sobre'),
      ],
    ),
  );
}
