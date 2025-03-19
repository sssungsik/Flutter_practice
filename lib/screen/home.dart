import 'package:flutter/material.dart';
import 'package:flutter_practice/const/colors.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.black,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    color: Colors.redAccent,
                    height: 50,
                    width: 50,
                  ),
                  Container(
                    color: Colors.orangeAccent,
                    height: 50,
                    width: 50,
                  ),
                  Container(
                    color: Colors.yellowAccent,
                    height: 50,
                    width: 50,
                  ),
                  Container(
                    color: Colors.greenAccent,
                    height: 50,
                    width: 50,
                  ),
                ],
              ),
              Container(
                height: 50,
                width: 50,
                color: Colors.orangeAccent,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    color: Colors.redAccent,
                    height: 50,
                    width: 50,
                  ),
                  Container(
                    color: Colors.orangeAccent,
                    height: 50,
                    width: 50,
                  ),
                  Container(
                    color: Colors.yellowAccent,
                    height: 50,
                    width: 50,
                  ),
                  Container(
                    color: Colors.greenAccent,
                    height: 50,
                    width: 50,
                  ),
                ],
              ),
              Container(
                height: 50,
                width: 50,
                color: Colors.greenAccent,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
