import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';


class Eua extends StatefulWidget {
  const Eua({Key? key}) : super(key: key);

  @override
  _PrincipalState createState () =>_PrincipalState

    (

  );
}

class _PrincipalState extends State <Eua> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text('EUA'),
            foregroundColor: Colors.white,

            centerTitle: true,
            backgroundColor: Colors.lightGreen
        ),
        body: Stack(
          children: [
            FlutterMap(
              options: MapOptions(center: LatLng(29.4337, 94.8927), zoom: 3),
              children: [
                TileLayer(
                  urlTemplate: 'https://tile.thunderforest.com/landscape/{z}/{x}/{y}.png',
                  userAgentPackageName: 'com.example.app',
                ),
                MarkerLayer(
                    markers: [
                      Marker(
                          width: 80.0,
                          height: 80.0,
                          point: LatLng(29.4337, 94.8927),
                          builder: (ctx) =>
                              Container(
                                child: Icon(Icons.location_on, color: Colors.red),
                              )
                      ),
                    ]
                )
              ],)
          ],)
    );
  }
}

