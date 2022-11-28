import 'package:flutter/material.dart';
import '../constrants.dart';


class PlayerGoalsInfo extends StatelessWidget {
  const PlayerGoalsInfo({
    Key? key,
    required this.teamLogo,
    required this.playerName,
    required this.goalsNum,
  }) : super(key: key);

  final String teamLogo;
  final String playerName;
  final String goalsNum;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: defaultPadding * 2,
          vertical: defaultPadding / 3),
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white54,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(children: [
        const SizedBox(
          width: 20,
        ),
        Image.asset(
          teamLogo,
          height: 30,
          width: 30,
          fit: BoxFit.cover,
        ),
        const SizedBox(
          width: 20,
        ),
        Text(
          playerName,
          style: Theme.of(context)
              .textTheme
              .subtitle2!
              .copyWith(color: Colors.white),
        ),
        const Spacer(),
        Text(
          goalsNum,
          style: Theme.of(context)
              .textTheme
              .headline6!
              .copyWith(color: Colors.white),
        ),
        const SizedBox(width: 20,)
      ]),
    );
  }
}

class ResultStatisticsTap extends StatelessWidget {
  const ResultStatisticsTap({
    Key? key,
    required this.isActive,
    required this.tapName,
  }) : super(key: key);

  final bool isActive;
  final String tapName;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: defaultPadding / 2),
      width: 100,
      decoration: BoxDecoration(
          color: isActive ? subCobtainerBackGroundColor : Colors.white54,
          borderRadius: BorderRadius.circular(30)),
      child: Center(
        child: Text(
          tapName,
          style: Theme.of(context)
              .textTheme
              .bodyText1!
              .copyWith(color: isActive ? mainTextColor : Colors.grey.shade300),
        ),
      ),
    );
  }
}