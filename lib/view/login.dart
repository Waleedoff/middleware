import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:middleware/main.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(title: Text('------')),
          body: Column(
            children: [
              TextButton(
                onPressed: () {
                  sharepref!.setString('role', 'admin');

                  Get.offNamed('/adminS');
                },
                child: Text('login as an admin'),
              ),
              TextButton(
                onPressed: () {
                  sharepref!.setString('role', 'user');

                  Get.offNamed('/home');
                },
                child: Text('Login as a user'),
              ),
            ],
          )),
    );
  }
}
