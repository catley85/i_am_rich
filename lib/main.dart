import 'package:flutter/material.dart';

// The main funcon is the starting point for all FLutter apps.
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.pink[50],
        appBar: AppBar(
          backgroundColor: Colors.pink[800],
          title: const Text(
            'I am Rich?',
          ),
        ),
        body: const Center(
          child: Image(
            image: NetworkImage(
              'https://pbs.twimg.com/profile_images/1181117994488991744/cLZOXTtt_400x400.jpg',
            ),
          ),
        ),
      ),
    ),
  );
}
