import 'package:flutter/material.dart';

import '../../model/employee_model.dart';
import 'employee_card.dart';


class EmployeeList extends StatelessWidget {
  final List<User> employees;

  const EmployeeList({
    super.key,
    required this.employees,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: employees.length,
      itemBuilder: (context, index) {
        final employee = employees[index];
        return EmployeeCard(employee: employee);
      },
    );
  }
}