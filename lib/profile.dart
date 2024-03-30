import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // User Information Section
            Text(
              'User Information',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Name'),
              subtitle: Text('John Doe'),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text('Email'),
              subtitle: Text('johndoe@example.com'),
            ),
            // Statistics Tracking Section
            SizedBox(height: 20),
            Text(
              'Statistics Tracking',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            ListTile(
              leading: Icon(Icons.mood),
              title: Text('Mood'),
              subtitle: Text('Average: 75%'),
            ),
            ListTile(
              leading: Icon(Icons.nightlight_round),
              title: Text('Sleep'),
              subtitle: Text('Average: 7 hours'),
            ),
            ListTile(
              leading: Icon(Icons.local_hospital),
              title: Text('Anxiety Level'),
              subtitle: Text('Low'),
            ),
            // Buttons for Navigation
            SizedBox(height: 40),
            Text(
              'Navigation',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to Edit Profile page
              },
              child: Text('Edit Profile'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Navigate to Settings page
              },
              child: Text('Settings'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Navigate to Privacy Policy page
              },
              child: Text('Privacy Policy'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Log out
              },
              child: Text('Log Out'),
            ),
          ],
        ),
      ),
    );
  }
}