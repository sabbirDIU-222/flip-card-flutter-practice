import 'package:flutter/material.dart';

class FlipCardView extends StatelessWidget {
  final String fliptext;

  const FlipCardView({Key? key, required this.fliptext}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.purple[800],
      elevation: 6,
      child: Center(
        child: Text(
          fliptext,
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
