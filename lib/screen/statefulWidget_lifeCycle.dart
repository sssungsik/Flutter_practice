import 'package:flutter/material.dart';


// 라이프 사이클

class LifeCycleSample extends StatefulWidget {
  // 1. Constructor()
  // 2. createState()
  const LifeCycleSample({super.key});

  @override
  State<LifeCycleSample> createState() => _LifeCycleSampleState();
}

class _LifeCycleSampleState extends State<LifeCycleSample> {
  // 3. initState()
  // 4. didChangeDependencies()
  // 5. dirty
  // 6. build()
  // 7. clean -> !! setState() !! -> 5.dirty()
  // 8. deactivate()
  // 9. dispose()
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
