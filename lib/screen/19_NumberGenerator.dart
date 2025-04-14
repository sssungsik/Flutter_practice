import 'package:flutter/material.dart';
import 'package:flutter_practice/const/colors.dart';

class NumberGene extends StatelessWidget {
  const NumberGene({super.key});

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

              _Body(),
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
    return /// 제목, 아이콘
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '랜덤숫자생성기',
            style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.w800
            ),

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
  const _Body({super.key});

  @override
  Widget build(BuildContext context) {
    return  /// 숫자
      Expanded(
        child: Text('''
                123
                456
                789
              '''
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
