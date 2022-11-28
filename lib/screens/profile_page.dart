import 'package:flutter/material.dart';
import 'package:world_cup_ui_challenge/components/profile_page_components.dart';
import '../constrants.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(defaultPadding),
      child: ListView(
        children: [
          const Expanded(flex: 3, child: ProfileHeader()),
          Expanded(
              flex: 7,
              child: Column(
                children: [
                  SizedBox(
                    height: defaultPadding * 2,
                  ),
                  const ProfileTaps(),
                  SizedBox(
                    height: defaultPadding,
                  ),
                  const CustomField(
                    fieldTitle: "الإسم",
                    initValue: "محمد محسن",
                    svgPath: "assets/svg/profile.svg",
                  ),SizedBox(
                    height: defaultPadding,
                  ),
                  const CustomField(
                    fieldTitle: "البريد الإلكتروني",
                    initValue: "muh.ata.dev@gmail.com",
                    svgPath: "assets/svg/message.svg",
                  ),SizedBox(
                    height: defaultPadding,
                  ),
                  const CustomField(
                    fieldTitle: "رقم الهاتف",
                    initValue: "967733917354+",
                    svgPath: "assets/svg/call.svg",
                  ),SizedBox(
                    height: defaultPadding,
                  ),
                  const CustomField(
                    fieldTitle: "المدينة",
                    initValue: "المكلا-اليمن",
                    svgPath: "assets/svg/location.svg",
                  ),
                ],
              ))
        ],
      ),
    );
  }
}

