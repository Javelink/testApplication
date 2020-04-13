import 'package:flutter/material.dart';
import 'package:test_app/helpers/colorHelper.dart';

class HomePage extends StatefulWidget {
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {

  _changeBackgroundColor() {
    setState(() {
      ColorHelper().randomBackgroundColor();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: ColorHelper().randomBackgroundColor(),
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
      child: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () {
          _changeBackgroundColor();
        },
        child: Center(
          child: Text(
            "Hey there",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
