import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp_clone/screens/Home_screen.dart';

import 'screens/You.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color(0xFF075E54),
          ),
        ),
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home:const You(),
    );
  }
}
