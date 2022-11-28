import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../constrants.dart';

import '../components/login_page_components.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
          statusBarColor: appBackGroundColor,
          statusBarBrightness: Brightness.light),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: appBackGroundColor,
          body: Column(children: const [
            WorldCupLogo(),
            InfoPart(),
          ]),
        ),
      ),
    );
  }
}

