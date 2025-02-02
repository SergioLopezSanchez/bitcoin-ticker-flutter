import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  NetworkHelper(this.url);
  final String url;

  Future getData() async {
    var address = Uri.parse(url);
    http.Response response = await http.get(address);

    if (response.statusCode == 200) {
      String data = response.body;
      // print(data);
      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}
