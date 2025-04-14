import 'package:flutter/material.dart';
import 'package:flutter_practice/screen/home.dart';
import 'package:flutter_practice/screen/padding.dart';
import 'package:flutter_practice/screen/statefulWidget_lifeCycle.dart';
import 'package:flutter_practice/screen/image_test.dart';
import 'package:flutter_practice/screen/18_Alignment.dart';
import 'package:flutter_practice/screen/dday.dart';
import 'package:flutter_practice/screen/19_NumberGenerator.dart';


void main() {


  WidgetsFlutterBinding.ensureInitialized();

  // 플러터 실행
  runApp(
    MaterialApp(
      theme: ThemeData(
        fontFamily: 'sunflower',
        textTheme: TextTheme(
          displayLarge: TextStyle(
            color: Colors.white,
            fontSize: 77,
            fontFamily: 'pari',
          ),
          displayMedium: TextStyle(
            color: Colors.white,
            fontSize: 50,
            fontWeight: FontWeight.w600,
          ),
            displaySmall: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.w600,
            )
        )
      ),
      home: NumberGene(),
    )
  );
}
