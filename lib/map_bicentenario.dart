import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Bicentenario2 extends StatefulWidget {
  @override
  _Bicentenario2State createState() => _Bicentenario2State();
}

class _Bicentenario2State extends State<Bicentenario2> {

  GoogleMapController mapController;
  List<Marker> marcador = [
    
  ];

  @override
  void initState() {
    super.initState();
    marcador.add(Marker (
      markerId: MarkerId('Plaza bicentenario'),
      draggable: false,
      position: LatLng(22.769598,-102.572027)
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
        title: Text("Plaza bicentenario"),
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
                target: LatLng(22.769598,-102.572027),
                zoom: 18.0
              ),
            markers: Set.from(marcador),
          )
        ],
      ),
    );
  }
}