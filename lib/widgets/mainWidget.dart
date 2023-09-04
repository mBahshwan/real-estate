import 'package:flutter/material.dart';
import 'package:real_estate_app/const.dart';
import 'package:real_estate_app/models/project.dart';
import 'package:real_estate_app/models/recommendation.dart';
import 'package:real_estate_app/responsive.dart';

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: Responsive.isMobile(context) ? 1 : 1.7,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.asset(
                  "assets/images/background.jpg",
                  fit: BoxFit.fill,
                ),
                Container(
                  color: kDarkColor.withOpacity(0.10),
                ),
                Positioned(
                  top: 110,
                  left: 10,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Build a greate future\n for all of us!",
                        style: Responsive.isDesktop(context)
                            ? Theme.of(context).textTheme.headline3!.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold)
                            : Theme.of(context).textTheme.headline5!.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "Contact us",
                          style: TextStyle(color: kDarkColor),
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: kPrimaryColor),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Responsive.isDesktop(context)
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buildCardIfo(
                        context, Icons.supervisor_account, "67+", "Clients"),
                    buildCardIfo(
                        context, Icons.location_on, "139+", "projects"),
                    buildCardIfo(context, Icons.public, "30+", "Countries"),
                    buildCardIfo(context, Icons.star, "67+", "Star")
                  ],
                )
              : Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      buildCardIfo(
                          context, Icons.supervisor_account, "67+", "Clients"),
                      buildCardIfo(
                          context, Icons.location_on, "139+", "projects"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      buildCardIfo(context, Icons.public, "30+", "Countries"),
                      buildCardIfo(context, Icons.star, "67+", "Star")
                    ],
                  )
                ]),
          SizedBox(
            height: 23,
          ),
          Text(
            "Our projects",
            style: Theme.of(context).textTheme.headline6,
          ),
          SizedBox(
            height: 10,
          ),
          Responsive(
            desktop: buildGridView(3),
            mobile: buildGridView(1),
            tablet:
                buildGridView(MediaQuery.of(context).size.width < 900 ? 2 : 3),
            mobileLarge: buildGridView(2),
          ),
          SizedBox(
            height: 20,
          ),
          Text("Client Recommedation",
              style: Theme.of(context).textTheme.headline6),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 200,
            width: double.infinity,
            child: ListView.builder(
              // shrinkWrap: true,
              itemBuilder: (context, index) => Container(
                  margin: EdgeInsets.all(10),
                  height: 200,
                  width: 400,
                  color: kSecondaryColor,
                  child: Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage(
                              demoRecommendations[index].image.toString()),
                          radius: 30,
                        ),
                        title: Text(
                          demoRecommendations[index].name.toString(),
                          style: Theme.of(context).textTheme.subtitle2,
                        ),
                        subtitle: Text(
                          demoRecommendations[index].source.toString(),
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ),
                      Text(
                        demoRecommendations[index].text.toString(),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 4,
                        style: TextStyle(height: 1.5),
                      )
                    ],
                  )),
              itemCount: demoRecommendations.length,
              scrollDirection: Axis.horizontal,
            ),
          )
        ],
      ),
    );
  }

  GridView buildGridView(int crossAxisCount) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: demoProjects.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          childAspectRatio: 0.8,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20),
      itemBuilder: (context, index) => Container(
        padding: EdgeInsets.all(20),
        color: kSecondaryColor,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Image.asset(
            demoProjects[index].image.toString(),
            fit: BoxFit.fill,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            demoProjects[index].title.toString(),
            style: Theme.of(context).textTheme.subtitle2,
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: Text(
              demoProjects[index].description.toString(),
              style: TextStyle(
                height: 1,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "More details >",
            style: TextStyle(color: kPrimaryColor),
          ),
        ]),
      ),
    );
  }

  Column buildCardIfo(
      BuildContext context, IconData icon, String text, String lable) {
    return Column(
      children: [
        Icon(
          icon,
          size: 50,
        ),
        Text(
          "$text",
          style: Theme.of(context)
              .textTheme
              .headline6!
              .copyWith(fontSize: 30, color: kPrimaryColor),
        ),
        Text(
          "$lable",
          style: Theme.of(context).textTheme.subtitle2,
        )
      ],
    );
  }
}
