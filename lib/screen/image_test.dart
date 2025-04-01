import 'package:flutter/material.dart';
import 'dart:async';

class ImageTest extends StatefulWidget {
  const ImageTest({super.key});

  @override
  State<ImageTest> createState() => _ImageTestState();
}

class _ImageTestState extends State<ImageTest> {
  Timer? timer;
  PageController controller = PageController();


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    timer = Timer.periodic(
      Duration(seconds: 1),
        (timer) {
          int cnt = controller.page!.toInt();
          int nxt = cnt + 1;

          if(nxt >= 4 ) {
            nxt = 0;
          }

          controller.animateToPage(
              nxt,
              duration: Duration(milliseconds: 500),
              curve: Curves.bounceIn
          );
        },
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    if(timer != null){
      timer!.cancel();
    }
    controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        children: [
          Image.asset(
            fit: BoxFit.cover,
            'asset/img/img2.webp',
          ),
          Image.asset(
            fit: BoxFit.cover,
            'asset/img/img3.png',
          ),
          Image.asset(
            fit: BoxFit.cover,
            'asset/img/lang.png',
          ),
          Image.asset(
            fit: BoxFit.cover,
            'asset/img/gom.png',
          ),
        ],
      ),
    );
  }
}
