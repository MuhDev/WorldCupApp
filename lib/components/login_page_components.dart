import 'package:flutter/material.dart';

import '../constrants.dart';

class InfoPart extends StatelessWidget {
  const InfoPart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(defaultPadding),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Text(
                "كأس العالم\nقطر 2022",
                style: Theme.of(context).textTheme.headline3!.copyWith(
                    fontWeight: FontWeight.bold, color: mainTextColor),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Text(
                "تغطية لأحداث كأس العالم\nو متابعة حية لجميع المباريات و الفعاليات\nأولا بأول",
                style: Theme.of(context)
                    .textTheme
                    .subtitle1!
                    .copyWith(color: subTextColor, wordSpacing: 2, height: 1.5),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClipPath(
                  clipper: CustomeClipPath(),
                  child: SizedBox(
                    width: 220,
                    height: 120,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(mainTextColor),
                      ),
                      onPressed: () {
                        Navigator.of(context)
                            .pushReplacementNamed("/main-page");
                      },
                      child: Text(
                        "تسجيل دخول",
                        style: Theme.of(context).textTheme.headline6!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: appBackGroundColor),
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed("/main-page");
                  },
                  child: Text(
                    "مستخدم جديد",
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                        fontWeight: FontWeight.bold, color: mainTextColor),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class WorldCupLogo extends StatelessWidget {
  const WorldCupLogo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(defaultPadding),
        child: Stack(
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.only(top: defaultPadding * 2),
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                  color: NavigatioActiveIconColor,
                  borderRadius: BorderRadius.circular(60),
                ),
                child: Image.asset("assets/images/laaeb.png"),
              ),
            ),
            const Positioned(
              left: 80,
              child: SizedBox(
                width: 15,
                height: 15,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                ),
              ),
            ),
            const Positioned(
              left: 80,
              child: SizedBox(
                width: 15,
                height: 15,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                ),
              ),
            ),
            Positioned(
              bottom: 100,
              right: 25,
              child: SizedBox(
                width: 25,
                height: 25,
                child: CircleAvatar(
                  backgroundColor: subCobtainerBackGroundColor,
                ),
              ),
            ),
            const Positioned(
              bottom: 15,
              left: 50,
              child: SizedBox(
                width: 15,
                height: 15,
                child: CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 1, 177, 147),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomeClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;
    Path path = Path();
    path.moveTo(size.width * 0.2525000, size.height * 0.2000000);
    path.lineTo(0, size.height * 0.5000000);
    path.lineTo(size.width * 0.2500000, size.height * 0.8000000);
    path.lineTo(size.width * 0.7500000, size.height * 0.8000000);
    path.lineTo(size.width, size.height * 0.5000000);
    path.lineTo(size.width * 0.7500000, size.height * 0.2000000);
    path.lineTo(size.width * 0.2525000, size.height * 0.2000000);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
