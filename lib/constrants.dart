import 'package:flutter/material.dart';
Color appBackGroundColor=const Color(0xff8a1538);
Color containerBackGroundColor=const Color(0xffc8c8c8);
Color subCobtainerBackGroundColor=const Color(0xffff4700);
Color NavigatioActiveIconColor=const Color(0xffff004c);
Color DarkGreyColor=const Color(0xff65656b);
Color mainTextColor= Colors.white;
Color subTextColor= const Color(0xffc8c8c8);
double defaultPadding=16;

class MyBottomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final Function incrementFunc;
  const MyBottomNavigationBar({
    required this.selectedIndex,
    required this.incrementFunc,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
          topRight: Radius.circular(30), topLeft: Radius.circular(30)),
      child: BottomNavigationBar(
        onTap: (value) {
          incrementFunc(value);
        },
        elevation: 5,
          currentIndex: selectedIndex,
          selectedItemColor: NavigatioActiveIconColor,
          unselectedItemColor: Colors.white,
          items: const [
            BottomNavigationBarItem(
              activeIcon: Icon(Icons.home),
              icon: Icon(Icons.home_outlined),
              backgroundColor: Colors.white70,
              label: "الرئيسية",
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month_outlined),
                backgroundColor: Colors.white70,
                label: "الأخبار"),
            BottomNavigationBarItem(
                icon: Icon(Icons.bar_chart_rounded),
                backgroundColor: Colors.white70,
                label: "النتائج"),
            BottomNavigationBarItem(
              activeIcon:Icon(Icons.person_sharp) ,
                icon: Icon(Icons.person_outline),
                backgroundColor: Colors.white70,
                label: "الحساب"),
          ]),
    );
  }
}
