import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:middleware/main.dart';

class AdminScreen extends StatelessWidget {
  const AdminScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('admin page')),
      body: TextButton(
        onPressed: () {
          sharepref?.clear();
          Get.offNamed('/login');
        },
        child: Text(
          'singOut',
          style: TextStyle(color: Colors.red),
        ),
      ),
    );
  }
}
