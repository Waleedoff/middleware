import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:middleware/main.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('HomePage')),
      body: TextButton(
        onPressed: () {
          print(sharepref?.getString('id'));
          sharepref?.clear();
        },
        child: Text(
          'signOut',
          style: TextStyle(color: Colors.red),
        ),
      ),
    );
  }
}
