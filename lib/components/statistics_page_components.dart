import 'package:flutter/material.dart';
import 'package:world_cup_ui_challenge/constrants.dart';


class MoreMatch extends StatelessWidget {
  const MoreMatch({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: defaultPadding * 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("مباريات أخرى",
              style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(color: mainTextColor, fontWeight: FontWeight.bold)),
          Text(
            "مشاهدة الكل",
            style: Theme.of(context)
                .textTheme
                .bodyText1!
                .copyWith(color: Colors.grey.shade300),
          ),
        ],
      ),
    );
  }
}

class MatchScoreDetails extends StatelessWidget {
  const MatchScoreDetails({
    Key? key,
    required this.firstTeam,
    required this.statsticsType,
    required this.secondTeam,
  }) : super(key: key);

  final String firstTeam;
  final String statsticsType;
  final String secondTeam;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: defaultPadding * 2,vertical: defaultPadding/4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            width: 50,
            child: Center(
              child: Text(
                firstTeam,
                style: Theme.of(context).textTheme.headline5!.copyWith(
                      color: Colors.grey.shade400,
                    ),
              ),
            ),
          ),
          SizedBox(
            width: 150,
            child: Center(
              child: Text(
                statsticsType,
                style: Theme.of(context).textTheme.headline5!.copyWith(
                      color: Colors.grey.shade400,
                    ),
              ),
            ),
          ),
          SizedBox(
            width: 50,
            child: Center(
              child: Text(
                secondTeam,
                style: Theme.of(context).textTheme.headline5!.copyWith(
                      color: Colors.grey.shade400,
                    ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class MatchScoreTap extends StatelessWidget {
  const MatchScoreTap({
    Key? key,
    required this.isActive,
    required this.tapName,
    this.width=100,
  }) : super(key: key);

  final bool isActive;
  final double width;
  final String tapName;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: isActive
          ? BoxDecoration(
              color: NavigatioActiveIconColor,
              borderRadius: BorderRadius.circular(30))
          : null,
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

class MatchScore extends StatelessWidget {
  const MatchScore({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      padding: EdgeInsets.symmetric(
        horizontal: defaultPadding * 2,
      ),
      child: Row(
        children: [
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: 80,
                height: 80,
                child: CircleAvatar(
                  backgroundColor: Colors.white38,
                  child: Padding(
                    padding: EdgeInsets.all(defaultPadding),
                    child: Image.asset(
                      "assets/images/qatar.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Text(
                "قطر",
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(color: mainTextColor),
              )
            ],
          )),
          Expanded(
              child: Column(
            children: [
              Expanded(
                flex: 11,
                child: Center(
                  child: Text(
                    "3 - 2",
                    style: Theme.of(context).textTheme.headline3!.copyWith(
                        color: mainTextColor, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  "9:00 مساءا",
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1!
                      .copyWith(color: mainTextColor),
                ),
              )
            ],
          )),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: 80,
                height: 80,
                child: CircleAvatar(
                  backgroundColor: Colors.white38,
                  child: Padding(
                    padding: EdgeInsets.all(defaultPadding),
                    child: Image.asset(
                      "assets/images/argentina.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Text(
                "الأرجنتين",
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(color: mainTextColor),
              )
            ],
          )),
        ],
      ),
    );
  }
}
