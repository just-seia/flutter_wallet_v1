import 'package:wallet/modules/Users.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Services {

  static getUsers() async {
    var url = Uri.parse('http://localhost:8888/test/');
    var response = await http.get(url);
    if (response.statusCode == 200) {
      print(jsonDecode(response.body));
      return jsonDecode(response.body);
    } else {
      return jsonDecode(response.body);
    }
  }
}
