import 'package:flutter/material.dart';
import 'package:flutter_practice/screen/padding.dart';

class PaddingEx extends StatelessWidget {
  const PaddingEx({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.black,
          child: Padding(
            padding: EdgeInsets.fromLTRB(
                32,
                64,
                160,
                320,
            ),
            child: Container(
              color: Colors.redAccent,
              width: 50,
              height: 50,
            ),
          ),
        ),
      ),
    );
  }
}
