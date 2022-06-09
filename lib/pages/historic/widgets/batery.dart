import 'package:flutter/material.dart';

class BateryState extends StatelessWidget {
  const BateryState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Container(
        width: 50,
        height: 100,
        child: Column(
          children: [
            for (var i = 0; i < 10; i++)
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(1),
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
