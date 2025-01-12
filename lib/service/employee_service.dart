import 'dart:convert';

import '../model/employee_model.dart';
import 'package:http/http.dart' as http;

class EmployeeService {
  // this endpoint is not working http://dummy.restapiexample.com/api/v1/employees
  String endpoint = 'https://dummyjson.com/users';

  Future<List<User>> fetchEmployees() async {
    try {
      final response = await http.get(Uri.parse(endpoint));

      if (response.statusCode == 200) {
        final Map<String, dynamic> data = json.decode(response.body);
        final UserResponse userResponse = UserResponse.fromJson(data);
        return userResponse.users;
      } else {
        throw Exception('Failed to load employees: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Error fetching employees: $e');
    }
  }
}