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
              _Head(),
              _Footer(),
            ],
          ),
        ),
      ),
    );
  }
}

class _Head extends StatelessWidget {
  const _Head({super.key});

  @override
  Widget build(BuildContext context) {
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
                onPressed: (){},
                icon: Icon(
                  Icons.favorite,
                )
            ),
            Text('D-10',
              style: textTheme.displayMedium,
             ),
          ],
        ),
      ),
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
            'asset/dday/img/middle_image.png'
        ),
      ),
    );
  }
}
