import 'package:flutter/material.dart';
import 'package:flutter_practice/screen/home.dart';
import 'package:flutter_practice/screen/padding.dart';
import 'package:flutter_practice/screen/statefulWidget_lifeCycle.dart';

void main() {


  WidgetsFlutterBinding.ensureInitialized();

  // 플러터 실행
  runApp(
    MaterialApp(
      home: LifeCycleSample(),
    )
  );
}
