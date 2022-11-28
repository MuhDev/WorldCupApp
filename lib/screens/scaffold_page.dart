import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:world_cup_ui_challenge/screens/home_page.dart';
import 'package:world_cup_ui_challenge/screens/news_page.dart';
import 'package:world_cup_ui_challenge/screens/profile_page.dart';
import 'package:world_cup_ui_challenge/screens/result_page.dart';
import '../constrants.dart';

class ScaffoldPage extends StatefulWidget {
  const ScaffoldPage({Key? key}) : super(key: key);

  @override
  State<ScaffoldPage> createState() => _ScaffoldPageState();
}

class _ScaffoldPageState extends State<ScaffoldPage> {
  int currentIndex = 0;
  List<Widget> pages = [
    const HomePage(),
    const NewsPage(),
    const ResultPage(),
    const ProfilePage(),
  ];

  void changeNvigationBarIndex(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
          statusBarColor: appBackGroundColor,
          statusBarBrightness: Brightness.light),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: SafeArea(
          child: Scaffold(
            extendBody: true,
            bottomNavigationBar: MyBottomNavigationBar(
              selectedIndex: currentIndex,
              incrementFunc: changeNvigationBarIndex,
            ),
            backgroundColor: appBackGroundColor,
            body: pages[currentIndex],
          ),
        ),
      ),
    );
  }
}
