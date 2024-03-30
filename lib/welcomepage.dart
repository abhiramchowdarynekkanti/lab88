import 'package:flutter/material.dart';
import 'homepage.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0), // This removes the app bar
        child: AppBar(
          backgroundColor: Color(0xFFDBC59C), // Set app bar color same as background color
          elevation: 0, // Remove shadow
        ),
      ),
      body: Container(
        color: Color(0xFFF3EDE0), // Background color
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
              child: Image.asset(
                'assets/logo.png', // Adjust the path to your logo image
                width: 280,
                height: 290,
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Taking',
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'YesevaOne', // Set font family
                    ),
                  ),
                  Text(
                    'action is',
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'YesevaOne', // Set font family
                    ),
                  ),
                  Text(
                    'difficult but',
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'YesevaOne', // Set font family
                    ),
                  ),
                  Text(
                    'it is',
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'YesevaOne', // Set font family
                    ),
                  ),
                  Text(
                    'necessary',
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'YesevaOne', // Set font family
                    ),
                  ),
                  SizedBox(height: 20), // Add some space between text and button
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10), // Adjust padding as needed
                ),
                child: Text(
                  'Let\'s get started',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,

                      fontFamily: 'YesevaOne'
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