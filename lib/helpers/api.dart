import 'dart:convert';
import 'package:http/http.dart' as http;

class Api {
  /////////////////// << get >> ///////////////////
  Future<dynamic> get({required String url, String? token}) async {
    Map<String, String> headers = {};
    if (token != null) {
      headers.addAll({'Authorization': 'Bearar $token'});
    }

    http.Response response = await http.get(Uri.parse(url), headers: headers);
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      return data;
    } else {
      throw Exception(
          'there is a problem with status code ${response.statusCode}');
    }
  }
  /////////////////// << post >> ///////////////////

  Future<dynamic> post(
      {required String url, dynamic body, String? token}) async {
    Map<String, String> headers = {};
    if (token != null) {
      headers.addAll({'Authorization': 'Bearar $token'});
    }

    http.Response response =
        await http.post(Uri.parse(url), body: body, headers: headers);

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      return data;
    } else {
      throw Exception(
          'there is a problem with status code ${response.statusCode} with body ${jsonDecode(response.body)}');
    }
  }
  /////////////////// << put >> ///////////////////

  Future<dynamic> put(
      {required String url, dynamic body, String? token}) async {
    Map<String, String> headers = {};
    headers.addAll({'Content-Type': 'application/x-www-form-urlencoded'});
    if (token != null) {
      headers.addAll({'Authorization': 'Bearar $token'});
    }

    print('url: $url , body: $body , token: $token');

    http.Response response =
        await http.put(Uri.parse(url), body: body, headers: headers);

    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);
      print('data: $data');
      return data;
    } else {
      print('==================');
      print(response.statusCode);
      print('==================');
      print(response.body);
      print(jsonDecode(response.body)["message"]);
      print('==================');

      throw Exception('========================'
          'there is a problem with status code: ${response.statusCode} with body: ${jsonDecode(response.body)["message"]}');
    }
  }
}
