import 'package:flutter/material.dart';

class FlexAlignment extends StatefulWidget {
  @override
  _FlexAlignmentState createState() => _FlexAlignmentState();
}

class _FlexAlignmentState extends State<FlexAlignment> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Flex Alignment')),
        // ...existing code...
        body: Container(
          color: Colors.blue,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,                
                children: [
                  Container(color: Colors.red, width: 100, height: 100),
                  Container(color: Colors.green, width: 100, height: 100),
                  Container(color: Colors.yellow, width: 100, height: 100),
                ],
              ),
              Column(
                children: [
                  Container(color: Colors.purple, width: 100, height: 100),
                  Container(color: Colors.orange, width: 100, height: 100),
                  Container(color: Colors.teal, width: 100, height: 100),
                ],
              ),
            ],
          ),
        ),
        // ...existing code...
      ),
    );
  }
}
