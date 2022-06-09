import 'package:flutter/material.dart';
import 'package:zumbeedo/pages/historic/widgets/batery.dart';

class HistoricCard extends StatelessWidget {
  const HistoricCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              BateryState(),
              BateryState(),
            ],
          ),
        ),
      ),
    );
  }
}
