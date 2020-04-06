import 'package:flutter/material.dart';
import 'package:test_app/helpers/colorHelper.dart';

class HomePage extends StatefulWidget {
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  Color _color = Colors.white;

  _changeBackgroundColor() {
    setState(() {
      _color = ColorHelper().randomBackgroundColor();
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
        child: Center(
          child: Text(
            "Hey there",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
