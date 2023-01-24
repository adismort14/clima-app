import 'dart:convert';

import 'package:http/http.dart' as http;

class NetworkHelper {
  String url;

  NetworkHelper(this.url);

  Future getWeather(url) async {
    http.Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      print(response.body);
      return jsonDecode(response.body);
      // String userCity = data['name'];
      // int userId = data['weather'][0]['id'];
      // double userTemp = data['main']['temp'];
    } else {
      print(response.statusCode);
      return;
    }
  }
}
