import 'package:flutter/material.dart';
import 'package:flutter_practice/const/colors.dart';

class NumberGene extends StatefulWidget {
  const NumberGene({super.key});

  @override
  State<NumberGene> createState() => _NumberGeneState();
}

class _NumberGeneState extends State<NumberGene> {
  List<int> numbers = [123,456,789,];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorBL,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _Header(),
              _Body(
                numbers: numbers,
              ),
              _Footer()

            ],
          ),
        ),
      ),
    );
  }
}




class _Header extends StatelessWidget {
  const _Header({super.key});

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return /// 제목, 아이콘
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '테스트',
            style: textTheme.displayLarge,
              ),
          IconButton(
              color: colorYL,
              onPressed: (){},
              icon: Icon(
                Icons.settings,
              ))
        ],
      );
  }
}


class _Body extends StatelessWidget {
  List<int> numbers;
  const _Body({
    required this.numbers,
    super.key,});

  @override
  Widget build(BuildContext context) {
    return  /// 숫자
      Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: numbers
              .map((a)=>a.toString().split(''))
              .map((e) => Row(
            children: e.map((ee) => Image.asset(
               'asset/numbergene/img/$ee.png',
              width: 50,
              height: 70,
            ),
            ).toList(),
          )).toList(),
        ),
      );
  }
}


class _Footer extends StatelessWidget {
  const _Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return /// 버튼
      ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: colorYL,
            foregroundColor: colorBL,
          ),
          onPressed: (){},
          child: Text('생성'));
  }
}
