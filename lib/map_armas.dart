import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Armas2 extends StatefulWidget {
  @override
  _Armas2State createState() => _Armas2State();
}

class _Armas2State extends State<Armas2> {

  GoogleMapController mapController;
  List<Marker> marcador = [
    
  ];

  @override
  void initState() {
    super.initState();
    marcador.add(Marker (
      markerId: MarkerId('Plaza de armas'),
      draggable: false,
      position: LatLng(22.776130,-102.571710)
    )
    );
  }
  @override
  Widget build(BuildContext context) {
    double screenW = MediaQuery.of(context).size.width;
    double screenH = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(229, 0, 126, 1.0),
        title: Text("Plaza de armas"),
      ), 
      body: Stack( 
        children: <Widget>[
          GoogleMap(
            onMapCreated: (controller){
                setState(() {
                 mapController = controller; 
                });
              },
              initialCameraPosition: CameraPosition(
                target: LatLng(22.776130,-102.571710),
                zoom: 18.0
              ),
            markers: Set.from(marcador),
          )
        ],
      ),
    );
  }
}