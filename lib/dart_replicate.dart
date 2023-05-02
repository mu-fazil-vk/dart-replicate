import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

class Replicate {
  static Future<dynamic> run(String model, Map<String, dynamic> inputs) async {
    var prediction = await create(model, inputs);
    while (!['canceled', 'succeeded', 'failed'].contains(prediction['status'])) {
      await Future.delayed(Duration(milliseconds: 250));
      prediction = await get(prediction);
    }
    return prediction['output'];
  }

  static Future<dynamic> get(Map<String, dynamic> prediction) async {
    var response = await http.get(Uri.parse(
        'https://replicate.com/api/models${prediction['version']['model']['absolute_url']}/versions/${prediction['version_id']}/predictions/${prediction['uuid']}'));
    return jsonDecode(response.body)['prediction'];
  }

  static Future<dynamic> create(
      String model, Map<String, dynamic> inputs) async {
    final parts = model.split(':');
    final path = parts[0];
    final version = parts[1];

    final response = await http.post(
      Uri.https('replicate.com', '/api/models/$path/versions/$version/predictions'),
      headers: {'content-type': 'application/json'},
      body: jsonEncode({'inputs': inputs}),
    );
    return jsonDecode(response.body);
  }
}
