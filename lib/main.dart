import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp_clone/Colors/theaming.dart';
import 'package:whatsapp_clone/Screens/Home_screen.dart';
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
          // useMaterial3: true,
          fontFamily:'OpenSans',
          // colorScheme: ColorScheme.fromSeed(
          //   seedColor: AppColors.defaultcolor,
          // ),
          appBarTheme: const AppBarTheme(
            color: AppColors.defaultcolor,
            iconTheme: IconThemeData(color:Colors.white),
            titleTextStyle: TextStyle(color: AppColors.appBarTextcolor,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
            ),
          ),
        ),
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home:const HomeScreen(),
    );
  }
}
