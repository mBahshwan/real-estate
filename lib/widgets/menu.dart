import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:real_estate_app/const.dart';
import 'package:real_estate_app/responsive.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive.isMobile(context)
        ? SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 250,
                  width: MediaQuery.of(context).size.width,
                  color: kSecondaryColor,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/logo.png",
                          width: 100,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Real Estate",
                          style: Theme.of(context).textTheme.subtitle2,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Modern home with greate\n interior design",
                          textAlign: TextAlign.center,
                        ),
                      ]),
                ),
                SizedBox(
                  height: 10,
                ),
                builtContactinfo(context, "Address:", "Station Street 5"),
                builtContactinfo(context, "City:", "Innsbruck"),
                builtContactinfo(context, "Email:", "email@website.com"),
                builtContactinfo(context, "Mobile:", "+43 123 456 7890"),
                builtContactinfo(context, "Website:", "my@website.com"),
                SizedBox(
                  height: 40,
                ),
                Text(
                  "Goals",
                  style: Theme.of(context).textTheme.subtitle2,
                ),
                SizedBox(
                  height: 20,
                ),
                buildGoals("Planning stage"),
                SizedBox(
                  height: 5,
                ),
                buildGoals("Development"),
                SizedBox(
                  height: 5,
                ),
                buildGoals("Excuting phase"),
                SizedBox(
                  height: 5,
                ),
                buildGoals("New way of living"),
                SizedBox(
                  height: 50,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    SvgPicture.asset("assets/icons/download.svg"),
                    SizedBox(
                      width: 5,
                    ),
                    Text("Download Brochure")
                  ],
                ),
                Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
                    color: kSecondaryColor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SvgPicture.asset("assets/icons/linkedin.svg"),
                        SvgPicture.asset("assets/icons/github.svg"),
                        SvgPicture.asset("assets/icons/twitter.svg"),
                        SvgPicture.asset("assets/icons/dribble.svg")
                      ],
                    ))
              ],
            ),
          )
        : Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 250,
                width: MediaQuery.of(context).size.width,
                color: kSecondaryColor,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/logo.png",
                        width: 100,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Real Estate",
                        style: Theme.of(context).textTheme.subtitle2,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Modern home with greate\n interior design",
                        textAlign: TextAlign.center,
                      ),
                    ]),
              ),
              SizedBox(
                height: 10,
              ),
              builtContactinfo(context, "Address:", "Station Street 5"),
              builtContactinfo(context, "City:", "Innsbruck"),
              builtContactinfo(context, "Email:", "email@website.com"),
              builtContactinfo(context, "Mobile:", "+43 123 456 7890"),
              builtContactinfo(context, "Website:", "my@website.com"),
              SizedBox(
                height: 40,
              ),
              Text(
                "Goals",
                style: Theme.of(context).textTheme.subtitle2,
              ),
              SizedBox(
                height: 20,
              ),
              buildGoals("Planning stage"),
              SizedBox(
                height: 5,
              ),
              buildGoals("Development"),
              SizedBox(
                height: 5,
              ),
              buildGoals("Excuting phase"),
              SizedBox(
                height: 5,
              ),
              buildGoals("New way of living"),
              SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  SvgPicture.asset("assets/icons/download.svg"),
                  SizedBox(
                    width: 5,
                  ),
                  Text("Download Brochure")
                ],
              ),
              Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
                  color: kSecondaryColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SvgPicture.asset("assets/icons/linkedin.svg"),
                      SvgPicture.asset("assets/icons/github.svg"),
                      SvgPicture.asset("assets/icons/twitter.svg"),
                      SvgPicture.asset("assets/icons/dribble.svg")
                    ],
                  ))
            ],
          );
  }

  Row buildGoals(String title) {
    return Row(
      children: [
        SvgPicture.asset("assets/icons/check.svg"),
        SizedBox(
          width: 10,
        ),
        Text("$title")
      ],
    );
  }

  Row builtContactinfo(BuildContext context, String title, String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.subtitle2,
        ),
        Text(text)
      ],
    );
  }
}
