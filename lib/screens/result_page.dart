import 'package:flutter/material.dart';
import '../components/result_page_components.dart';
import '../components/statistics_page_components.dart';
import '../constrants.dart';
import '../data.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: defaultPadding),
          padding: EdgeInsets.all(defaultPadding / 2),
          width: double.infinity,
          height: 70,
          child: ListView.builder(
            itemCount: resutltTaps.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              bool isActive = resutltTaps[index]["isActive"] as bool;
              String tapName = resutltTaps[index]["tapName"] as String;
              return MatchScoreTap(
                isActive: isActive,
                tapName: tapName,
                width: 130,
              );
            },
          ),
        ),
        Container(
          padding: EdgeInsets.only(right: defaultPadding),
          margin: EdgeInsets.only(top: defaultPadding),
          width: double.infinity,
          height: 50,
          child: ListView.builder(
            itemCount: statisticsTaps.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              bool isActive = statisticsTaps[index]["isActive"] as bool;
              String tapName = statisticsTaps[index]["tapName"] as String;
              return ResultStatisticsTap(isActive: isActive, tapName: tapName);
            },
          ),
        ),
        SizedBox(
          height: defaultPadding * 2,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: defaultPadding * 2),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "اللاعب",
                style: Theme.of(context)
                    .textTheme
                    .subtitle1!
                    .copyWith(color: Colors.white),
              ),
              Text(
                "الأهداف",
                style: Theme.of(context)
                    .textTheme
                    .subtitle1!
                    .copyWith(color: Colors.white),
              )
            ],
          ),
        ),
        Divider(
          height: 1,
          color: Colors.white54,
          thickness: 1,
          endIndent: defaultPadding * 2,
          indent: defaultPadding * 2,
        ),
        Expanded(
          child: ListView.builder(
            itemCount: goalsOrder.length,
            itemBuilder: (BuildContext context, int index) {
              String playerName = goalsOrder[index]["playerName"] as String;
              String teamLogo = goalsOrder[index]["teamLogo"] as String;
              String goalsNum = goalsOrder[index]["goalsNum"] as String;
              return PlayerGoalsInfo(
                  teamLogo: teamLogo,
                  playerName: playerName,
                  goalsNum: goalsNum);
            },
          ),
        ),
      ],
    );
  }
}
