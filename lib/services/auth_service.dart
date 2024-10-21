import 'package:logger/logger.dart';
import 'package:shamo_app/models/user_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class AuthService {
  final Logger logger = Logger();
  String baseUrl = 'http://shamo-backend.test/api';

  Future<UserModel> register({
    required String name,
    required String username,
    required String email,
    required String password,
  }) async {
    var url = Uri.parse('$baseUrl/register');
    var headers = {'Content-Type': 'application/json'};
    var body = jsonEncode({
      'name': name,
      'username': username,
      'email': email,
      'password': password,
    });

    var response = await http.post(
      url,
      headers: headers,
      body: body,
    );

    logger.d(response.body);

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body)['data'];
      UserModel user = UserModel.fromJson(data['user']);
      user.token = 'Bearer ${data['access_token']}';

      return user;
    } else {
      throw Exception('Gagal register: ${response.body}');
    }
  }
}
