import 'package:flutter/material.dart';
import 'package:labmis2/models/joke.dart';
import 'package:labmis2/widgets/joke_card_data.dart';

class JokeCard extends StatelessWidget {
  final int id;
  final String type;
  final String setup;
  final String punchline;
  const JokeCard({super.key, required this.id, required this.type, required this.setup,required this.punchline});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.greenAccent,
      child: InkWell(
          borderRadius: BorderRadius.circular(10),
          splashColor: Colors.green[50],
          onTap: () => {
            Navigator.pushNamed(context, '/jokes',
                arguments: Joke(id: id, type: type, setup: setup,punchline: punchline))
          },
          child: Container(
            margin: const EdgeInsets.all(5.0),
            padding: const EdgeInsets.all(5.0),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.green.withOpacity(0.8), width: 2),
                borderRadius: BorderRadius.circular(10)
            ),
            child: JokeCardData(type:type,setup:setup,punchline:punchline),
          )
      ),
    );
  }
}
