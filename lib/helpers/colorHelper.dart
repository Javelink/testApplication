import 'dart:math';
import 'package:flutter/material.dart';

class ColorHelper {
  final Random _random = new Random();

  Color randomBackgroundColor() {
    return new Color.fromRGBO(
        _random.nextInt(255), 
        _random.nextInt(255), 
        _random.nextInt(255), 1.0);
  }
}