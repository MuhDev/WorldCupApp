import 'package:flutter/material.dart';
import '../components/home_page_components.dart';
import '../constrants.dart';
import '../data.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: defaultPadding,vertical: defaultPadding/2),
          child: const myAppBar(),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: defaultPadding),
          child: const LastNewsContainer(),
        ),
        const SizedBox(
          height: 5,
        ),
        Container(
          padding: EdgeInsets.only(right: defaultPadding),
          width: double.infinity,
          height: 150,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: groups.length,
            itemBuilder: (context, index) {
              return GroupContainer(
                assetPath: groups[index]["asset"] as String,
                groupName: groups[index]["groupName"] as String,
                isActive: groups[index]["isActive"] as bool,
              );
            },
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: defaultPadding),
            child: ListView.builder(
              itemCount: matchs.length,
              itemBuilder: (BuildContext context, int index) {
                return MatchInfo(
                  mathcInfo: matchs[index],
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
