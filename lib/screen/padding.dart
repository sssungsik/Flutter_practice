import 'package:flutter/material.dart';
import 'package:flutter_practice/screen/padding.dart';


class PaddingEx extends StatefulWidget {

  @override
  State<PaddingEx> createState() => _PaddingExState();
}


class _PaddingExState extends State<PaddingEx> {

  Color color = Colors.blueAccent;
  var atext = 'asd';

  @override
  Widget build(BuildContext context) {
    print('빌드');
    return Scaffold(
      body: Center(
        child: Container(
          color: color,
          child: Padding(
            padding: EdgeInsets.fromLTRB(
                32,
                64,
                160,
                320,
            ),
            child: ElevatedButton(
              onPressed:() {
                if(color == Colors.blueAccent) {
                 color = Colors.redAccent;
                 atext = '레드';
                 print(atext);
                } else {
                 color = Colors.blueAccent;
                 atext = '블루';
                 print(atext);
                }
                setState(() { // 빌드를 재실행 하는 것.
                });
              },
              child: Text(atext),
            ),
          ),
        ),
      ),
    );
  }
}
