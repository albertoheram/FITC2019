import 'package:flutter/material.dart';
//import 'package:carousel_slider/carousel_slider.dart';

class ImageS extends StatefulWidget {
  @override
  _ImageSState createState() => _ImageSState();
}

class _ImageSState extends State<ImageS> {


Widget slider (Color color, String text)
{
  return Container (
      //color: Color.fromRGBO(255, 236, 0, 1.0),
      decoration: new BoxDecoration(
        color: Color.fromRGBO(255, 236, 0, 1.0),
        image: DecorationImage(
          image: new AssetImage(
            'assets/images/plaza_armas_1.jpg' //imagen sedes
          ),
          fit: BoxFit.contain,
        )
      ),
    );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(229, 0, 126, 1.0),
      body: slider(Colors.pink,""),
    );
  }

}