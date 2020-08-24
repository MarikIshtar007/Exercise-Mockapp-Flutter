import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animation_test/animations/exercise_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  PageController controller;

  @override
  void initState() {
    super.initState();
    controller = PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        children: [
          ExerciseWidget(imageUrl: 'assets/images/one.jpg',),
          ExerciseWidget(imageUrl: 'assets/images/four.jpg',),
          ExerciseWidget(imageUrl: 'assets/images/three.jpg',),
        ],
      ),
    );
  }
}





