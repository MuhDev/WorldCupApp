import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:world_cup_ui_challenge/constrants.dart';

class ImportentNewsWidget extends StatelessWidget {
  const ImportentNewsWidget({
    Key? key,
    required this.title,
    required this.newsPic,
  }) : super(key: key);

  final String title;
  final String newsPic;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 300,
        padding: EdgeInsets.symmetric(horizontal: defaultPadding / 2),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Card(
            child: GridTile(

              footer: SizedBox(height: 80,
                child: GridTileBar(
                  backgroundColor: Colors.black.withOpacity(0.70),
                  title: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(title,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context)
                            .textTheme
                            .headline6!
                            .copyWith(
                              color: mainTextColor,
                              fontWeight: FontWeight.bold,
                            )),
                  ),
                ),
              ),
              child: Image.asset(
                newsPic,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ));
  }
}

class NewsWidget extends StatelessWidget {
  const NewsWidget({
    Key? key,
    required this.newsPic,
    required this.title,
    required this.date,
  }) : super(key: key);

  final String newsPic;
  final String title;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      margin: EdgeInsets.all(defaultPadding / 2),
      child: Row(children: [
        Expanded(
          flex: 4,
          child: Image.asset(
            newsPic,
            fit: BoxFit.fitHeight,
            height: 120,
          ),
        ),
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.only(right: defaultPadding / 4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                          color: mainTextColor,
                          fontWeight: FontWeight.bold,
                        )),
                Text(date,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.subtitle2!.copyWith(
                          color: Colors.grey,
                        )),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Center(
              child: SvgPicture.asset(
            "assets/svg/archive.svg",
            color: mainTextColor,
          )),
        ),
      ]),
    );
  }
}

class CountryNewsTap extends StatelessWidget {
  const CountryNewsTap({
    Key? key,
    required this.isActive,
    required this.countryLogo,
    required this.countryName,
  }) : super(key: key);

  final bool isActive;
  final String countryLogo;
  final String countryName;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: defaultPadding / 2),
      width: isActive ? 120 : 55,
      decoration: isActive
          ? BoxDecoration(
              color: NavigatioActiveIconColor,
              borderRadius: BorderRadius.circular(30))
          : null,
      child: isActive
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  countryLogo,
                  width: 30,
                  height: 30,
                  fit: BoxFit.contain,
                ),
                Text(
                  countryName,
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1!
                      .copyWith(color: mainTextColor),
                )
              ],
            )
          : CircleAvatar(
              backgroundColor: Colors.white38,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Image.asset(
                  countryLogo,
                  fit: BoxFit.cover,
                ),
              ),
            ),
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(defaultPadding),
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
          color: Colors.white54, borderRadius: BorderRadius.circular(15)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
              flex: 2,
              child: SvgPicture.asset(
                "assets/svg/search-normal.svg",
                color: Colors.grey.shade700,
              )),
          Expanded(
              flex: 10,
              child: Text(
                "البحث عن الفرق و المباريات و اللاعبين",
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                    color: Colors.grey.shade700),
              )),
        ],
      ),
    );
  }
}
