import 'package:flutter/material.dart';

class JokeTypeCard extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const JokeTypeCard({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(
            fontSize: 30,
            color: Colors.green[800], // Dark green color
          ),
        ),
        trailing: Icon(Icons.chevron_right),
        onTap: onTap,
      ),
    );
  }
}