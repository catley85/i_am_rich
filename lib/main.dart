import 'package:flutter/material.dart';
import "dart:math";

// The main funcon is the starting point for all FLutter apps.
void main() {
  runApp(const IAmRich());
}

class IAmRich extends StatelessWidget {
  const IAmRich({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'I am Rich?',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(
        title: 'I am Rich?',
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _randomAsset = 'images/shrug.png';
  final _assetsArray = [
    'images/hawk.png',
    'images/mikey.png',
    'images/charles.png'
  ];

  void _selectRandomAsset() {
    setState(() {
      final _random = Random();
      _randomAsset = _assetsArray[_random.nextInt(_assetsArray.length)];
      debugPrint('ASSET: $_randomAsset');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
        ),
      ),
      body: Column(children: <Widget>[
        Image.asset(_randomAsset),
      ]),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 50.0, left: 16.0, right: 16.0),
        child: ElevatedButton(
          onPressed: _selectRandomAsset,
          child: const Text(
            'Submit',
          ),
          style: ElevatedButton.styleFrom(
            minimumSize: const Size.fromHeight(
                40), // fromHeight use double.infinity as width and 40 is the height
          ),
        ),
      ),
    );
  }
}
