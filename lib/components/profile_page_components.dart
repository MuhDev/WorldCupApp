import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:world_cup_ui_challenge/components/statistics_page_components.dart';
import 'package:world_cup_ui_challenge/constrants.dart';

class CustomField extends StatelessWidget {
  final String svgPath;
  final String fieldTitle;
  final String initValue;
  const CustomField({
    required this.svgPath,
    required this.fieldTitle,
    required this.initValue,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 10,
          child: TextFormField(
            style: Theme.of(context)
                .textTheme
                .headline6!
                .copyWith(color: Colors.grey.shade400),
            initialValue: initValue,
            decoration: InputDecoration(
                labelStyle: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(color: mainTextColor),
                labelText: fieldTitle,
                icon: SvgPicture.asset(
                  svgPath,
                  color: Colors.white70,
                ),
                focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white70)),
                enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white70))),
          ),
        ),
        const Expanded(
            flex: 2,
            child: Center(
                child: Icon(
              Icons.arrow_forward_ios_rounded,
              color: Colors.white70,
            )))
      ],
    );
  }
}

class ProfileTaps extends StatelessWidget {
  const ProfileTaps({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: Row(children: const [
        MatchScoreTap(
          isActive: true,
          tapName: "حسابي",
        ),
        MatchScoreTap(
          isActive: false,
          tapName: "إعدادات",
        )
      ]),
    );
  }
}

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      SizedBox(
        width: 150,
        height: 150,
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            const SizedBox(
              width: 130,
              height: 130,
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/myPic.png"),
              ),
            ),
            Positioned(
              bottom: 10,
              right: 10,
              child: CircleAvatar(
                backgroundColor: NavigatioActiveIconColor,
                child: SvgPicture.asset(
                  "assets/svg/edit-2.svg",
                  color: mainTextColor,
                ),
              ),
            ),
          ],
        ),
      ),
      Text(
        "محمد محسن",
        style: Theme.of(context)
            .textTheme
            .headline5!
            .copyWith(color: mainTextColor, fontWeight: FontWeight.bold),
      ),
    ]);
  }
}
