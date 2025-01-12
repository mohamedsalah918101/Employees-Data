import 'package:employees_api/view/widgets/employees_list.dart';
import 'package:flutter/material.dart';

import '../model/employee_model.dart';
import '../service/employee_service.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final EmployeeService _employeeService = EmployeeService();
  List<User> _employees = [];
  bool _isLoading = false;
  String _error = '';

  Future<void> _fetchEmployees() async {
    setState(() {
      _isLoading = true;
      _error = '';
    });

    try {
      final employees = await _employeeService.fetchEmployees();
      setState(() {
        _employees = employees;
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _error = 'Error fetching employees: $e';
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Employee Data'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: _fetchEmployees,
              child: const Text('Fetch Employees'),
            ),
          ),
          if (_isLoading)
            const Center(child: CircularProgressIndicator())
          else if (_error.isNotEmpty)
            Center(
              child: Text(
                _error,
                style: const TextStyle(color: Colors.red),
              ),
            )
          else
            Expanded(
              child: EmployeeList(employees: _employees),
            ),
        ],
      ),
    );
  }
}