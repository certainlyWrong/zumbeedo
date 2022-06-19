import 'package:flutter/material.dart';
import 'package:zumbeedo/pages/historic/widgets/historic_card.dart';

class HistoricPage extends StatelessWidget {
  const HistoricPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Histórico"),
        // backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Center(
        child: Container(
          color: Theme.of(context).colorScheme.background,
          child: ListView(
            children: const [
              HistoricCard(),
              HistoricCard(),
              HistoricCard(),
              HistoricCard(),
              HistoricCard(),
              HistoricCard(),
              HistoricCard(),
              HistoricCard(),
              HistoricCard(),
              HistoricCard(),
            ],
          ),
        ),
      ),
    );
  }
}
