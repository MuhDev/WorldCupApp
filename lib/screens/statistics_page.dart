import 'package:flutter/material.dart';
import '../components/home_page_components.dart';
import '../components/statistics_page_components.dart';
import '../constrants.dart';
import '../data.dart';

class StatisticsPage extends StatelessWidget {
  const StatisticsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_rounded),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          centerTitle: true,
          title: const Text("المجموعة E"),
          backgroundColor: appBackGroundColor,
          elevation: 0,
        ),
        backgroundColor: appBackGroundColor,
        body: Column(
          children: [
            const MatchScore(),
            SizedBox(
              height: defaultPadding,
            ),
            Container(
              padding: EdgeInsets.all(defaultPadding / 2),
              width: double.infinity,
              height: 70,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: matchScoreTaps.length,
                itemBuilder: (BuildContext context, int index) {
                  bool isActive = matchScoreTaps[index]["isActive"] as bool;
                  String tapName = matchScoreTaps[index]["tapName"] as String;
                  return MatchScoreTap(isActive: isActive, tapName: tapName);
                },
              ),
            ),
            SizedBox(
              height: defaultPadding,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: defaultPadding / 2),
              width: double.infinity,
              height: 180,
              child: ListView.builder(
                itemCount: statsticsInfo.length,
                itemBuilder: (BuildContext context, int index) {
                  String firstTeam =
                      statsticsInfo[index]["firstTeam"] as String;
                  String secondTeam =
                      statsticsInfo[index]["secondTeam"] as String;
                  String statsticsType =
                      statsticsInfo[index]["statsticsType"] as String;
                  return MatchScoreDetails(
                      firstTeam: firstTeam,
                      statsticsType: statsticsType,
                      secondTeam: secondTeam);
                },
              ),
            ),
            SizedBox(
              height: defaultPadding,
            ),
            const MoreMatch(),
            SizedBox(
              height: defaultPadding / 2,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: otherMatchs.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: EdgeInsets.all(defaultPadding),
                    child: MatchScoreStatus(
                      mathcInfo: otherMatchs[index],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
