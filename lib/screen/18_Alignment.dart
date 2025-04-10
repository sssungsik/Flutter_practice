import 'package:flutter/material.dart';

class Aligns extends StatelessWidget {
  const Aligns({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          color: Colors.black,
          child: Align(
            // alignment: Alignment.bottomRight, ->아래와 같다
            alignment: Alignment(1,1),
            child: Container(
              height: 50,
              width: 50,
              color: Colors.green,
            ),
          ),
        ),
      ),
    );
  }
}

