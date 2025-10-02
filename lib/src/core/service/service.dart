import 'package:http/http.dart' as http;
import 'dart:convert';

Future<List<Map<String, dynamic>>> fetchEonetEvents() async {
  final url = 'https://eonet.gsfc.nasa.gov/api/v3/events/geojson?status=open&limit=1';
  final response = await http.get(Uri.parse(url));
  if (response.statusCode == 200) {
    final data = json.decode(response.body);
    // Each feature is an event
    return List<Map<String, dynamic>>.from(data['features']);
  } else {
    throw Exception('Failed to load EONET events');
  }
}
