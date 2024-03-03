/* import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(
      37.7749, -122.4194); // Coordenadas iniciales del mapa (San Francisco, CA)
  final Set<Marker> _markers = {}; // Marcadores en el mapa
  final double _zoom = 12.0; // Nivel de zoom inicial

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mapa de Google'),
      ),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: _center,
          zoom: _zoom,
        ),
        markers: _markers,
      ),
    );
  }

  void _onMapCreated(GoogleMapController controller) {
    setState(() {
      mapController = controller;
      _addMarker(); // Agregar marcador al mapa
    });
  }

  void _addMarker() {
    final Marker marker = Marker(
      markerId: MarkerId('marker_id'), // ID del marcador
      position: _center, // Posición del marcador
      infoWindow: InfoWindow(
        title: 'San Francisco', // Título del marcador
        snippet: 'Ciudad en California', // Descripción del marcador
      ),
    );

    setState(() {
      _markers.add(marker); // Agregar marcador al conjunto de marcadores
    });
  }
}
 */