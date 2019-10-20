import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(229, 0, 126, 1.0),
      body: Slider(),
    );
  }
}

class Slider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screen = MediaQuery.of(context).size.height;
    return new Center (
      child: Container (
        padding: EdgeInsets.all(0.0),
        height: screen/2,
        child: Carousel (
          boxFit: BoxFit.cover,
          images: [
            'assets/images/bicentenario_1.jpg'
            'assets/images/bicentenario_2.jpg'
            'assets/images/bicentenario_3.jpg'
          ],
        )
      ),
    );
  }
}