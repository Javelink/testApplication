import 'dart:math';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  final Random _random = new Random();
  Color _color = Colors.white;

  _changeBackgroundColor() {
    setState(() {
      _color = new Color.fromRGBO(_random.nextInt(255), _random.nextInt(255),
          _random.nextInt(255), 1.0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: _color,
        appBar: AppBar(
          title: Text("Test Application"),
          leading: Icon(Icons.timelapse),
        ),
        body: _body(),
      ),
    );
  }

  Widget _body() {
    return Container(
      color: _color,
      child: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () => _changeBackgroundColor(),
        child: Container(
          child: Center(
            child: Text(
              "Hey there",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
