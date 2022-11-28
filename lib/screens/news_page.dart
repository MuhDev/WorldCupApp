import 'package:flutter/material.dart';
import 'package:world_cup_ui_challenge/components/news_page_components.dart';
import 'package:world_cup_ui_challenge/constrants.dart';
import 'package:world_cup_ui_challenge/data.dart';


class NewsPage extends StatelessWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView(
      children: [
        const SearchBar(),
        SizedBox(
          height: defaultPadding,
        ),
        SizedBox(
          height: 55,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: countryNewsTaps.length,
            itemBuilder: (BuildContext context, int index) {
              String countryLogo =
                  countryNewsTaps[index]["countryLogo"] as String;
              String countryName =
                  countryNewsTaps[index]["countryName"] as String;
              bool isActive = countryNewsTaps[index]["isActive"] as bool;
              return CountryNewsTap(
                  isActive: isActive,
                  countryLogo: countryLogo,
                  countryName: countryName);
            },
          ),
        ),
        SizedBox(
          height: defaultPadding,
        ),
        SizedBox(
          height: 400,
          child: ListView.builder(
            itemCount: News.length,
            itemBuilder: (BuildContext context, int index) {
              String newsPic = News[index]["newsPic"] as String;
              String title = News[index]["title"] as String;
              String date = News[index]["date"] as String;
              return NewsWidget(newsPic: newsPic, title: title, date: date);
            },
          ),
        ),
        SizedBox(
          height: defaultPadding,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: defaultPadding / 2),
          child: Text("أخبار هامة",
              style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(color: mainTextColor, fontWeight: FontWeight.bold)),
        ),
        SizedBox(
          height: defaultPadding,
        ),
        SizedBox(
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: News.length,
            itemBuilder: (BuildContext context, int index) {
              String newsPic = News[index]["newsPic"] as String;
              String title = News[index]["title"] as String;
              String date = News[index]["date"] as String;
              return ImportentNewsWidget(title: title, newsPic: newsPic);
            },
          ),
        ),
      ],
    );
  }
}

