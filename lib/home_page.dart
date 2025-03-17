/// HomePage widget implements the login screen of the application.
/// It contains a username input field and a login button.
import 'package:basic_login_app/second_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  /// Controller for the username text field
  /// This allows us to access and manage the text input
  final TextEditingController _usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Please Login to your OLOPSC Account",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue[700],
        elevation: 4,
        shadowColor: Colors.blueGrey,
      ),
      backgroundColor: Colors.yellow[400],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 250,
              child: TextField(
                controller: _usernameController,
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  labelText: "Enter mo nga Username moq",
                  labelStyle: TextStyle(
                    color: Colors.black,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondPage(
                      username: _usernameController.text.trim(),
                    ),
                  ),
                );
              },
              child: Text(
                "Login",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(
                  Colors.blueGrey[700],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
