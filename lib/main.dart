import 'package:flutter/material.dart';

void main() {
  runApp(SubwayETApp());
}

class SubwayETApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Subway ETA',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SubwayETScreen(),
    );
  }
}

class SubwayETScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Subway ETA'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SubwayLine(lineNumber: '1', color: Colors.red),
            SubwayLine(lineNumber: '2', color: Colors.green),
            SubwayLine(lineNumber: '3', color: Colors.blue),
            SubwayLine(lineNumber: '4', color: Colors.yellow),
            SubwayLine(lineNumber: '5', color: Colors.orange),
            SubwayLine(lineNumber: '6', color: Colors.purple),
            SubwayLine(lineNumber: '7', color: Colors.teal),
            SubwayLine(lineNumber: '8', color: Colors.pink),
            SubwayLine(lineNumber: '9', color: Colors.brown),
          ],
        ),
      ),
    );
  }
}

class SubwayLine extends StatelessWidget {
  final String lineNumber;
  final Color color;

  SubwayLine({required this.lineNumber, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8.0),
      child: Row(
        children: <Widget>[
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color,
            ),
            child: Center(
              child: Text(
                lineNumber,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
          SizedBox(width: 16.0),
          Expanded(
            child: Text(
              'ETA for Line $lineNumber',
              style: TextStyle(fontSize: 18.0),
            ),
          ),
        ],
      ),
    );
  }
}
