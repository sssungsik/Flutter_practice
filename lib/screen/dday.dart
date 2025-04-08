import 'package:flutter/material.dart';

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
              Expanded(
                child: Container(
                  child: Column(
                    children: [
                      Text('The Day',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'pari',
                          fontSize: 77,
                        ),),
                      IconButton(
                        iconSize: 50,
                          color: Colors.black,
                          onPressed: (){},
                          icon: Icon(
                            Icons.favorite,
                          )
                      ),
                      Text('D-10',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                          fontFamily: 'sunflower',
                          fontWeight: FontWeight.w600,
                        ),),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child: Image.asset(
                    'asset/dday/img/middle_image.png'
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
