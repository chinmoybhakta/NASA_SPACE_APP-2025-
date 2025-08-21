import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:geojson_vi/geojson_vi.dart';

class VegetationMapPage extends StatefulWidget {
  const VegetationMapPage({super.key});

  @override
  State<VegetationMapPage> createState() => _VegetationMapPageState();
}

class _VegetationMapPageState extends State<VegetationMapPage> {
  // Choose an initial date supported by the NDVI layer
  DateTime currentDate = DateTime.utc(2025, 8, 1);

  // Polygons for targeted region
  List<Polygon> regionPolygons = [];

  // GIBS WMTS config for NDVI (example identifier; confirm exact ID from capabilities)
  String ndviUrlTemplate(DateTime date) {
    final d = "${date.year.toString().padLeft(4,'0')}-"
        "${date.month.toString().padLeft(2,'0')}-"
        "${date.day.toString().padLeft(2,'0')}";
    return 'https://gibs.earthdata.nasa.gov/wmts/epsg4326/best/'
        'MODIS_Terra_Vegetation_Indices_16Day_NDVI_Color/default/$d/1km/{z}/{y}/{x}.jpg';
  }

  Future<void> loadRegionFromAsset(String path) async {
    final text = await rootBundle.loadString(path);
    final fc = GeoJSONFeatureCollection.fromJSON(jsonDecode(text));

    final polygons = <Polygon>[];

    for (final feature in fc.features) {
      final geom = feature?.geometry;
      if (geom == null) continue;

      if (geom.type == GeoJSONType.polygon) {
        final poly = geom as GeoJSONPolygon;

        // Use the outer ring (index 0). If you want holes, iterate remaining rings.
        final outerRing = poly.coordinates.first;
        final points = outerRing
            .map<LatLng>((c) => LatLng(
          (c[1] as num).toDouble(), // latitude
          (c as num).toDouble(), // longitude
        ))
            .toList();

        polygons.add(
          Polygon(
            points: points,
            color: Colors.green.withOpacity(0.25),
            borderColor: Colors.green.shade700,
            borderStrokeWidth: 2,
            //isFilled: true,
          ),
        );
      } else if (geom.type == GeoJSONType.multiPolygon) {
        final mp = geom as GeoJSONMultiPolygon;

        // Each MultiPolygon is a list of polygons; each polygon has rings.
        for (final polygonRings in mp.coordinates) {
          if (polygonRings.isEmpty) continue;
          final outerRing = polygonRings.first;
          final points = outerRing
              .map<LatLng>((c) => LatLng(
            (c[1] as num).toDouble(), // latitude
            (c as num).toDouble(), // longitude
          ))
              .toList();

          polygons.add(
            Polygon(
              points: points,
              color: Colors.green.withOpacity(0.25),
              borderColor: Colors.green.shade700,
              borderStrokeWidth: 2,
              //isFilled: true,
            ),
          );
        }
      }
    }

    setState(() {
      regionPolygons = polygons;
    });
  }

  @override
  void initState() {
    super.initState();
    // Demo: load sample region (place a GeoJSON file at assets/data/samples/region.geojson)
    loadRegionFromAsset('assets/data/samples/region.geojson');
  }

  @override
  Widget build(BuildContext context) {
    final url = ndviUrlTemplate(currentDate);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Global Vegetation (NDVI)'),
        actions: [
          IconButton(
            icon: const Icon(Icons.calendar_month),
            onPressed: () async {
              final picked = await showDatePicker(
                context: context,
                initialDate: currentDate,
                firstDate: DateTime(2000, 1, 1),
                lastDate: DateTime.now(),
              );
              if (picked != null) {
                setState(() => currentDate = picked);
              }
            },
          ),
        ],
      ),
      body: FlutterMap(
        options: const MapOptions(
          initialCenter: LatLng(10, 10),
          initialZoom: 2,
        ),
        children: [
          // Base Vegetation (NDVI color)
          TileLayer(
            urlTemplate: url,
            tileProvider: NetworkTileProvider(),
            tileSize: 512, // many GIBS EPSG:4326 layers use 512px
            maxZoom: 8,    // match the 1km matrix set range
          ),
          PolygonLayer(polygons: regionPolygons),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {
          await loadRegionFromAsset('assets/data/samples/region.geojson');
        },
        label: const Text('Reload Region'),
        icon: const Icon(Icons.map),
      ),
    );
  }
}
