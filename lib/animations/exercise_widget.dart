import 'package:flutter/material.dart';
import 'fade_route_animation.dart';
import 'package:animation_test/screens/page_two.dart';

class ExerciseWidget extends StatefulWidget {

  final String imageUrl;

  const ExerciseWidget({Key key, this.imageUrl}) : super(key: key);

  @override
  _ExerciseWidgetState createState() => _ExerciseWidgetState();
}

class _ExerciseWidgetState extends State<ExerciseWidget>
    with TickerProviderStateMixin {

  AnimationController rippleController;
  AnimationController scaleController;

  Animation<double> rippleAnimation;
  Animation<double> scaleAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    rippleController =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    scaleController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));

    rippleAnimation =
    Tween<double>(begin: 50, end: 70).animate(rippleController)
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          rippleController.reverse();
        } else if (status == AnimationStatus.dismissed) {
          rippleController.forward();
        }
      });

    scaleAnimation =
    Tween<double>(begin: 1.0, end: 34.0).animate(scaleController)
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed)
          Navigator.push(context, FadeRoute(page: PageTwo()))
              .then((value) => scaleController.reverse());
      });

    rippleController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(widget.imageUrl),
            fit: BoxFit.cover),
      ),
      child: Container(
        decoration: BoxDecoration(
            gradient:
            LinearGradient(begin: Alignment.bottomCenter, colors: [
              Colors.black.withOpacity(0.3),
              Colors.black.withOpacity(0.3),
            ])),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
              ),
              Text(
                'Exercise 1',
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(
                height: 40,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '15',
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.yellow[400]),
                  ),
                  Text(
                    'Minutes',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '3',
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.yellow[400]),
                  ),
                  Text(
                    'Exercises',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ],
              ),
              SizedBox(
                height: 100,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Start the morning with your health',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w100),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: AnimatedBuilder(
                  animation: rippleAnimation,
                  builder: (context, child) {
                    return AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: rippleAnimation.value,
                      height: rippleAnimation.value,
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue.withOpacity(0.4),
                        ),
                        child: InkWell(
                          onTap: () {
                            scaleController.forward();
                          },
                          child: AnimatedBuilder(
                            animation: scaleAnimation,
                            builder: (context, child) =>
                                Transform.scale(
                                  scale: scaleAnimation.value,
                                  child: Container(
                                    margin: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.blue),
                                  ),
                                ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
