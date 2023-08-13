import 'package:flutter/material.dart';
import 'package:world_cup_ui_challenge/screens/home_page.dart';
import 'package:world_cup_ui_challenge/screens/login_screen.dart';
import 'package:world_cup_ui_challenge/screens/scaffold_page.dart';
import 'package:world_cup_ui_challenge/screens/statistics_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Qatar World Cup',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: "Tajawal"),
      home: const Directionality(
        textDirection: TextDirection.rtl,
        child: LoginPage(),
      ),
       routes: {
        "/main-page":(context) => const ScaffoldPage(),
        "/group-page":(context) => const StatisticsPage()
       },
    );
  }
}


