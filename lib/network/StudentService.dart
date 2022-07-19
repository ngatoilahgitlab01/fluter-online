import 'package:flutter_auth/model/Student.dart';
import 'api.dart';
import 'dart:convert';

class StudentService {
  static String baseUrl = "/student";

  static Future<List<Student>> getStudent() async {
    final response = await Network().getData(baseUrl);
    List<Student> list = parseResponse(response.body);
    return list;
  }

  static List<Student> parseResponse(String responseBody) {
    final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
    return parsed.map<Student>((json) => Student.fromJson(json)).toList();
  }
}
