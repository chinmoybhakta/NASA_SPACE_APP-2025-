import 'dart:convert';
import 'package:http/http.dart' as http;

class NasaApiService {
  final String baseUrl = "https://images-api.nasa.gov/search";

  Future<List<dynamic>> searchImages(String query) async {
    final response = await http.get(Uri.parse("$baseUrl?q=$query"));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      // NASA returns { collection: { items: [...] } }
      return data['collection']['items'];
    } else {
      throw Exception("Failed to fetch images");
    }
  }
}
