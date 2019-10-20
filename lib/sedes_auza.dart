import 'package:flutter/material.dart';
//import 'package:carousel_slider/carousel_slider.dart';

class Auza extends StatefulWidget {
  @override
  _AuzaState createState() => _AuzaState();
}

class _AuzaState extends State<Auza> {


Widget _widget1 (Color color, String text)
{
  return Container (
      //color: Color.fromRGBO(255, 236, 0, 1.0),
      decoration: new BoxDecoration(
        color: Color.fromRGBO(255, 236, 0, 1.0),
        image: DecorationImage(
          image: new AssetImage(
            'assets/images/miguel_auza_1.jpg' //imagen sedes
          ),
          fit: BoxFit.contain,
        )
      ),
    );
}

Widget _widget2 (Color color, String text)
{
  return Container (
      //color: Color.fromRGBO(255, 236, 0, 1.0),
      decoration: new BoxDecoration(
        color: Color.fromRGBO(255, 236, 0, 1.0),
        image: DecorationImage(
          image: new AssetImage(
            'assets/images/miguel_auza_2.jpg' //imagen sedes
          ),
          fit: BoxFit.contain,
        )
      ),
    );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      backgroundColor: Color.fromRGBO(255, 236, 0, 1.0),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text("Plazuela Miguel Auza"),
            backgroundColor: Color.fromRGBO(229, 0, 126, 1.0),
            pinned: true,
          ),
          SliverFixedExtentList(
            itemExtent: 300,
            delegate: SliverChildListDelegate(
              [
                _widget1(Colors.pink,""),
                _widget2(Colors.pink,""),
              ]
            ),
          )
        ],
      )
    );
  }

}