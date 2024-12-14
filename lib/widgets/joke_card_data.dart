import 'package:flutter/material.dart';

class JokeCardData extends StatelessWidget {
  final String type;
  final String setup;
  final String punchline;
  const JokeCardData({super.key,required this.type, required this.setup,required this.punchline});

  @override
  Widget build(BuildContext context) {

    return Column(mainAxisSize: MainAxisSize.min,
      children: [
        Text(type, style: const TextStyle(
            color: Colors.green, fontSize: 25, fontWeight: FontWeight.w800
        ),),
        Text(setup, style: const TextStyle(
            color: Colors.green, fontSize: 25, fontWeight: FontWeight.w800
        ),),
        Text(punchline, style: const TextStyle(
            color: Colors.green, fontSize: 20, fontWeight: FontWeight.w800
        ),)
      ],
    );
  }
}
