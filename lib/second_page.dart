/// SecondPage widget displays a welcome message to the user after login.
/// It demonstrates navigation and data passing between screens.
import 'package:flutter/material.dart';

/// SecondPage is a StatefulWidget that receives a username parameter
/// and displays a personalized welcome message.
class SecondPage extends StatefulWidget {
  /// The username passed from the login screen
  final String username;

  const SecondPage({
    super.key,
    required this.username,
  });

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome to OLOPSC!'),
        backgroundColor: Colors.yellow,
      ),
      backgroundColor: Colors.blue[800],
      body: Center(
        child: Text(
          'Welcome, ${widget.username}! Lumayas ka na dito !!',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}
