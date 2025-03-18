import 'package:flutter/material.dart';

void main() {
  // 플러터 실행
  runApp(
    MaterialApp(
      home: HomeScreen(),
    ),
  );
}





// StatelessWidget
class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blue,
      backgroundColor: Color(0xFF335CB0),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 30,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset('asset/img/gom.png'),
            ),
            CircularProgressIndicator(
              color: Colors.white,
            ),
          ],
        ),
      )
    );
  }
}