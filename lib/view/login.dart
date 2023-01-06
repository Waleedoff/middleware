import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:middleware/main.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text('login')),
        body: TextButton(
          onPressed: () {
            sharepref!.setString('id', 'waleed');

            Get.offNamed('/home');
          },
          child: Text('Login'),
        ),
      ),
    );
  }
}
