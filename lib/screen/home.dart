import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_practice/const/colors.dart';
import 'package:webview_flutter/webview_flutter.dart';

final blogURI = Uri.parse("https://sssungsik.github.io/sungsikCar/");

class Home extends StatelessWidget {

  WebViewController controller = WebViewController()
  ..setJavaScriptMode(JavaScriptMode.unrestricted)
  ..loadRequest(blogURI);

  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.black,
      //   title: Text('최성식앱'),
      //   centerTitle: true,
      //   actions: [
      //     IconButton(
      //       onPressed: (){
      //         showDialog(context: context, builder: (BuildContext context) {
      //           return AlertDialog(title: Text('안녕~~'));
      //         });
      //       },
      //       icon: Icon(
      //         Icons.back_hand
      //       ),
      //     )
      //   ],
      // ),
      body:
      WebViewWidget(
          controller: controller
      ),
      // SafeArea(
      //   child: Container(
      //     color: Colors.black,
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //       children: [
      //         Text('Expanded',
      //           style: TextStyle(
      //             fontSize: 20,
      //             color: Colors.white,
      //             height: 0.01,
      //           ),
      //
      //         ),
      //         Row(
      //           children: [
      //             Expanded(
      //               child: Container(
      //                 color: Colors.lightBlue,
      //                 height: 50,
      //                 width: 50,
      //               ),
      //             ),
      //             Container(
      //               color: Colors.pinkAccent,
      //               height: 50,
      //               width: 50,
      //             ),
      //             Container(
      //               color: Colors.amber,
      //               height: 50,
      //               width: 50,
      //             ),
      //             Container(
      //               color: Colors.green,
      //               height: 50,
      //               width: 50,
      //             ),
      //           ],
      //         ),
      //         Text('Flexible, fit: FlexFit.loose',
      //           style: TextStyle(
      //             fontSize: 20,
      //             color: Colors.white,
      //             height: 0.01,
      //           ),
      //         ),
      //         Row(
      //           children: [
      //             Flexible(
      //               fit: FlexFit.loose,
      //               child: Container(
      //                 color: Colors.blueAccent,
      //                 height: 50,
      //                 width: 50,
      //               ),
      //             ),
      //             Container(
      //               color: Colors.pinkAccent,
      //               height: 50,
      //               width: 50,
      //             ),
      //             Container(
      //               color: Colors.amber,
      //               height: 50,
      //               width: 50,
      //             ),
      //             Container(
      //               color: Colors.green,
      //               height: 50,
      //               width: 50,
      //             ),
      //           ],
      //         ),
      //         Text('Flexible, fit: FlexFit.tight',
      //           style: TextStyle(
      //             fontSize: 20,
      //             color: Colors.white,
      //             height: 0.01,
      //           ),
      //         ),
      //         Row(
      //           children: [
      //             Flexible(
      //               fit: FlexFit.tight,
      //               child: Container(
      //                 color: Colors.blueAccent,
      //                 height: 50,
      //                 width: 50,
      //               ),
      //             ),
      //             Container(
      //               color: Colors.pinkAccent,
      //               height: 50,
      //               width: 50,
      //             ),
      //             Container(
      //               color: Colors.amber,
      //               height: 50,
      //               width: 50,
      //             ),
      //             Container(
      //               color: Colors.green,
      //               height: 50,
      //               width: 50,
      //             ),
      //           ],
      //         ),
      //
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
