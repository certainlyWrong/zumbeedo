import 'package:flutter/material.dart';

class IntroductionPage extends StatefulWidget {
  const IntroductionPage({Key? key}) : super(key: key);

  @override
  State<IntroductionPage> createState() => IintroductionStatePage();
}

class IintroductionStatePage extends State<IntroductionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // backgroundColor: Theme.of(context).colorScheme.primary,
          ),
      body: Center(
        child: Container(color: Colors.black),
      ),
    );
  }
}
