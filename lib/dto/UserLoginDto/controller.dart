import 'package:http/http.dart' as http;
import 'package:testappforlogin/dto/UserLoginDto/model.dart';
import 'dart:convert';
class APIService {
  static var client = http.Client();

 // static Future<UserLoginModel> userLoginApi(
  static Future<String> userLoginApi(
    String? username,
    String? password,
  ) async {
    Map<String, String> requestHeaders = {
      'Content-Type': 'application/json',
    };

    var url = Uri.parse("https://crmapi.srvinfotech.com/mobile/api/login");

    var response = await client.post(
      url,
      headers: requestHeaders,
      body: jsonEncode({
        "username": username,
        "password": password,
      }),
    );
    print("response: ${response.body}");
    print("response_status: ${response.statusCode}");
    var data = jsonDecode(response.body);
    int m = data['status'];
    if (m == 400) {
      print("response: $m");
      return "failed";
    //  return userLoginModelFromJson(data);
    }else {
      return "success";
    //  return userLoginModelFromJson(response.body);
    }
  }
}
