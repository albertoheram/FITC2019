import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Inter2 extends StatefulWidget {
  @override
  _Inter2State createState() => _Inter2State();
}

class _Inter2State extends State<Inter2> {

  GoogleMapController mapController;
  List<Marker> marcador = [];
  List<Marker> marcador2 = [];
  List<Marker> marcador3 = [];
  List<Marker> marcador4 = [];

  @override
  void initState() {
    super.initState();
    marcador.add(Marker (
      markerId: MarkerId('Plazuela Miguel Auza'),
      draggable: false,
      position: LatLng(22.773913,-102.574249)
    )
    );

    marcador2.add(Marker (
      markerId: MarkerId('Centro cultural ciudadela del arte'),
      draggable: false,
      position: LatLng(22.774914,-102.574040)
    )
    );

    marcador3.add(Marker (
      markerId: MarkerId('Jardín Juarez'),
      draggable: false,
      position: LatLng(22.773269,-102.574872)
    )
    );

    marcador4.add(Marker (
      markerId: MarkerId('Plazuela Genaro Codina'),
      draggable: false,
      position: LatLng(22.772764,-102.573430)
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
        title: Text("Intervenciones urbanas"),
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
                target: LatLng(22.773913,-102.574249),
                zoom: 18.0
              ),
            markers: Set.from(marcador),
          )
        ],
      ),
    );
  }
}