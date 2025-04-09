import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_practice/const/colors.dart';

class Dday extends StatelessWidget {
  const Dday({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      body: SafeArea(
        bottom: false,
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              _Head(),
              _Footer(),
            ],
          ),
        ),
      ),
    );
  }
}

class _Head extends StatefulWidget {
  const _Head({super.key});

  @override
  State<_Head> createState() => _HeadState();
}

class _HeadState extends State<_Head> {
  DateTime date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    var textTheme = Theme.of(context).textTheme;

    return Expanded(
      child: Container(
        child: Column(
          children: [
            Text('The Day',
              style: textTheme.displayLarge,
                ),
            IconButton(
                iconSize: 50,
                color: Colors.black,
                onPressed: onHeartClick,
                icon: Icon(
                  Icons.favorite,
                )
            ),
            Text(
              '${date.year}.${date.month}.${date.day}',
              style: textTheme.displaySmall,
            ),
            Text('D-${date.difference(now).inDays + 1}',
              style: textTheme.displayMedium,

             ),
          ],
        ),
      ),
    );
  }

  onHeartClick(){
    showCupertinoDialog(
          context: context,
          barrierDismissible: true,
          builder: (BuildContext context){
            return Align(
              alignment: Alignment.center,
              child: Container(
                color: Colors.white,
                height: 200,
                child: CupertinoDatePicker(
                  initialDateTime: date,
                  minimumDate: date,
                  mode: CupertinoDatePickerMode.date,
                  onDateTimeChanged: (DateTime datetime) {
                    setState(() {
                      date = datetime;
                    });
                  },
                  dateOrder: DatePickerDateOrder.ymd,
                ),
              ),
            );
          }
      );

  }
}

class _Footer extends StatelessWidget {
  const _Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: Container(
        child: Image.asset(
            'asset/dday/img/weding.png',
          fit: BoxFit.fitHeight
        ),
      ),
    );
  }
}
