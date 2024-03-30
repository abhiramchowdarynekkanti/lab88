import 'package:flutter/material.dart';
import 'package:lab88/chatbot.dart';
import 'package:lab88/api/gemini_api.dart';
import 'package:lab88/assessment.dart'; // Import Assessment page

class HomePage extends StatelessWidget {
  final TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF3EDE0), // Set app bar color same as background color
        elevation: 0, // Remove shadow
        actions: [
          IconButton(
            onPressed: () {
              // Navigate to profile page
            },
            icon: Icon(Icons.account_circle_outlined),
            color: Colors.black,
          ),
          IconButton(
            onPressed: () {
              // Open menu
            },
            icon: Icon(Icons.menu),
            color: Colors.black,
          ),
        ],
      ),
      backgroundColor: Color(0xFFF3EDE0), // Set background color
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'How are\nyou\nfeeling?',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'YesevaOne', // Set font to YesevaOne
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.black, // Set text color to black
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              child: TextField(
                controller: textController,
                onSubmitted: (value) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ChatBot(userInput: textController.text),
                    ),
                  );
                },
                decoration: InputDecoration(
                  hintText: 'Type your message...',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20), // Make input box rounded
                  ),
                  filled: true, // Set input box filled
                  fillColor: Colors.white, // Set input box background color to white
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChatBot(userInput: textController.text),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 0, 0, 0), // Set button color to black
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20), // Make button rounded
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Icon(Icons.send, color: Colors.white), // Use send icon instead of chat icon
                  SizedBox(width: 10),
                  Text('Enter', style: TextStyle(color: Colors.white, fontFamily: 'YesevaOne')), // Change button text to "Enter"
                ],
              ),
            ),
            SizedBox(height: 60),
            Text(
              'Not sure about\nyour feelings?',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'YesevaOne', // Set font to YesevaOne
                color: Colors.black, // Set text color to black
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Assessment(), // Navigate to Assessment page
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 39, 239, 17), // Set button color to green
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20), // Make button rounded
                ),
              ),
              child: Text(
                'Take an Assessment',
                style: TextStyle(
                  color: const Color.fromARGB(255, 0, 0, 0),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'YesevaOne',
                ), // Set text style
              ),
            ),
          ],
        ),
      ),
    );
  }
}
