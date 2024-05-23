import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';


class Italia extends StatefulWidget {
  const Italia({Key? key}) : super(key: key);

  @override
  _PrincipalState createState () =>_PrincipalState

    (

  );
}

class _PrincipalState extends State <Italia> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text('ITÁLIA'),
            foregroundColor: Colors.white,

            centerTitle: true,
            backgroundColor: Colors.greenAccent
        ),
        body: Stack(
          children: [
            FlutterMap(
              options: MapOptions(center: LatLng(43.7687, 11.2569), zoom: 3),
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
                          point: LatLng(43.7687, 11.2569),
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

