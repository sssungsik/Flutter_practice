import 'package:flutter/material.dart';
import 'package:flutter_practice/screen/home.dart';
import 'package:flutter_practice/screen/padding.dart';

void main() {


  WidgetsFlutterBinding.ensureInitialized();

  // 플러터 실행
  runApp(
    MaterialApp(
      home: PaddingEx(),
    )
  );
}
