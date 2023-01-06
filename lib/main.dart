import 'package:flutter/material.dart';
import 'package:middleware/middleware/auth_middleware.dart';
import 'package:middleware/view/home.dart';
import 'package:get/get.dart';
import 'package:middleware/view/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

SharedPreferences? sharepref;

//take async and await cause it's  future.

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sharepref = await SharedPreferences.getInstance();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Getx course',
      // home: HomeScreen(),
      initialRoute: '/',
      getPages: [
        GetPage(
            name: '/',
            page: () => LoginScreen(),
            middlewares: [AuthMiddleWare()]),
        GetPage(name: '/home', page: () => HomeScreen()),
      ],
    );
  }
}
