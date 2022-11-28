import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../constrants.dart';

class MatchInfo extends StatelessWidget {
  final Map<String, Object> mathcInfo;
  const MatchInfo({
    required this.mathcInfo,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding / 2),
      width: double.infinity,
      height: 120,
      margin: EdgeInsets.symmetric(vertical: defaultPadding / 2),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              mathcInfo["date"] as String,
              style: Theme.of(context)
                  .textTheme
                  .headline6!
                  .copyWith(color: mainTextColor),
            ),
            Icon(
              Icons.arrow_back_ios_new_rounded,
              color: mainTextColor,
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        MatchScoreStatus(mathcInfo: mathcInfo)
      ]),
    );
  }
}

class MatchScoreStatus extends StatelessWidget {
  const MatchScoreStatus({
    Key? key,
    required this.mathcInfo,
  }) : super(key: key);

  final Map<String, Object> mathcInfo;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 10,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: defaultPadding),
            height: 70,
            decoration: const BoxDecoration(
              color: Colors.white60,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Row(children: [
              Expanded(
                flex: 1,
                child: Image.asset(
                  mathcInfo["firstLogo"] as String,
                  width: 25,
                  height: 25,
                  fit: BoxFit.contain,
                ),
              ),
              Expanded(
                flex: 3,
                child: ScoreInfo(
                  first: mathcInfo["firstName"] as String,
                  second: mathcInfo["firstGoals"] as String,
                ),
              ),
              const Expanded(
                flex: 1,
                child: ScoreInfo(
                  first: "VS",
                  second: "-",
                ),
              ),
              Expanded(
                flex: 3,
                child: ScoreInfo(
                  first: mathcInfo["secondName"] as String,
                  second: mathcInfo["secondGoals"] as String,
                ),
              ),
              Expanded(
                flex: 1,
                child: Image.asset(
                  mathcInfo["secondLogo"] as String,
                  width: 25,
                  height: 25,
                  fit: BoxFit.contain,
                ),
              ),
            ]),
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            height: 70,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
            ),
            child: Center(
              child: Text(
                mathcInfo["matchStatus"] as String,
                style: Theme.of(context).textTheme.headline6!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: appBackGroundColor,
                    ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class ScoreInfo extends StatelessWidget {
  final String first;
  final String second;
  const ScoreInfo({
    required this.first,
    required this.second,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          first,
          style: Theme.of(context)
              .textTheme
              .subtitle1!
              .copyWith(color: mainTextColor, fontWeight: FontWeight.bold),
        ),
        Text(second,
            style: Theme.of(context)
                .textTheme
                .subtitle1!
                .copyWith(color: mainTextColor, fontWeight: FontWeight.bold)),
      ],
    );
  }
}

class GroupContainer extends StatelessWidget {
  final String assetPath;
  final String groupName;
  final bool isActive;
  const GroupContainer({
    required this.assetPath,
    required this.groupName,
    required this.isActive,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed("/group-page");
      },
      child: Container(
        padding: EdgeInsets.all(defaultPadding * 2),
        margin: EdgeInsets.symmetric(horizontal: defaultPadding / 2),
        width: 150,
        decoration: BoxDecoration(
          color: isActive ? NavigatioActiveIconColor : Colors.white60,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                assetPath,
                height: 50,
                width: 50,
                fit: BoxFit.cover,
              ),
              Text(
                "المجموعة $groupName",
                style: const TextStyle(color: Colors.white),
              )
            ]),
      ),
    );
  }
}

class LastNewsContainer extends StatelessWidget {
  const LastNewsContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Container(
            padding: EdgeInsets.all(defaultPadding),
            width: 380,
            height: 200,
            decoration: BoxDecoration(
              color: subCobtainerBackGroundColor,
              borderRadius: BorderRadius.circular(25),
            ),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 25,
                width: 70,
                decoration: BoxDecoration(
                    color: mainTextColor,
                    borderRadius: BorderRadius.circular(20)),
                child: Row(children: [
                  Image.asset(
                    "assets/images/france.png",
                    height: 25,
                    width: 25,
                  ),
                  Text(
                    "فرنسا",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: appBackGroundColor),
                  )
                ]),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "فرنسا أبطال كأس\nالعالم روسيا \n2018",
                style: Theme.of(context).textTheme.headline5!.copyWith(
                      color: mainTextColor,
                      fontWeight: FontWeight.bold,
                    ),
              )
            ]),
          ),
          Positioned(
            top: 5,
            left: 0,
            child: Image.asset(
              "assets/images/9995447581.png",
              height: 220,
              fit: BoxFit.fill,
            ),
          )
        ],
      ),
    );
  }
}

class myAppBar extends StatelessWidget {
  const myAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "متابعة حية",
          style: Theme.of(context)
              .textTheme
              .headline5!
              .copyWith(color: mainTextColor),
        ),
        const SizedBox(
          width: 180,
        ),
        SvgPicture.asset(
          "assets/svg/notification.svg",
          color: mainTextColor,
        ),
        const SizedBox(
          width: 20,
        ),
        SvgPicture.asset("assets/svg/search-normal.svg", color: mainTextColor),
      ],
    );
  }
}
