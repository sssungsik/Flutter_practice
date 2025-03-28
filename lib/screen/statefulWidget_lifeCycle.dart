import 'package:flutter/material.dart';

// 라이프 사이클

class LifeCycleSample extends StatefulWidget {
  final Color color;
  // 1. Constructor()
  // 2. createState()
  LifeCycleSample({
    super.key,
    required this.color,
  }) {
    print('1. Constructor');
  }


  @override
  State<LifeCycleSample> createState() {
    print('2. createState');
    return _LifeCycleSampleState();
  }
}

class _LifeCycleSampleState extends State<LifeCycleSample> {
  // 3. initState()
  // 4. didChangeDependencies()
  // 5. dirty
  // 6. build()
  // 7. clean -> !! setState() !! -> 5.dirty()
  // 8. deactivate()
  // 9. dispose()

  Color color = Colors.pinkAccent;

  @override
  void initState() {
    // TODO: implement initState
    print('3. initState');
    super.initState();
  }


  bool show = false;
  @override
  Widget build(BuildContext context) {
    print('5. build');
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (show)
              GestureDetector(
                  onTap: (){
                    setState(() {
                      color = color == Colors.pinkAccent ? Colors.amberAccent : Colors.blueAccent;
                    });
                  },
                  child: Container(color: widget.color, width: 50, height: 50)),
            SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  show = !show;
                });
                print('클릭함');
              },
              child: Text('클릭'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    print('deactivate');
    super.deactivate();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    print('dispose');
    super.dispose();
  }
}
