import 'package:flutter/material.dart';
import 'package:labmis2/models/joke.dart';
import 'package:labmis2/widgets/joke_card.dart';

class JokeGrid extends StatefulWidget {
  final List<Joke> jokes;
  const JokeGrid({super.key, required this.jokes});

  @override
  State<JokeGrid> createState() => _JokeGridState();
}

class _JokeGridState extends State<JokeGrid> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(padding: const EdgeInsets.all(4),
        crossAxisCount: 2,
        crossAxisSpacing: 4,
        mainAxisSpacing: 4,
        semanticChildCount: 250,
        childAspectRatio: 200/ 244,
        shrinkWrap: true,
        children: widget.jokes.map((j) => JokeCard(
          id: j.id, type: j.type, setup: j.setup,punchline: j.punchline,
        )).toList()
    );
  }
}
