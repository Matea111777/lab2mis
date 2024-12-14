import 'package:flutter/material.dart';
import 'package:labmis2/services/api_services.dart';
import '../widgets/joke_type_card.dart';
import 'jokes_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Joke Types"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0), // Add spacing
            child: ElevatedButton.icon(
              icon: Icon(Icons.shuffle, color: Colors.white),
              label: Text("Random", style: TextStyle(color: Colors.white)),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green, // Custom button color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20), // Rounded button
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/randomjoke');
              },
            ),
          ),
        ],
      ),
      body: Container(
        color: Colors.green[100], // Light green background
        child: FutureBuilder<List<String>>(
          future: ApiServices.getJokeTypes(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text("Error: ${snapshot.error}"));
            } else {
              return ListView(
                children: snapshot.data!
                    .map(
                      (type) => JokeTypeCard(
                    title: type,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => JokesScreen(type: type),
                        ),
                      );
                    },
                  ),
                )
                    .toList(),
              );
            }
          },
        ),
      ),
    );
  }
}
