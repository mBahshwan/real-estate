import 'package:flutter/material.dart';
import 'package:real_estate_app/const.dart';
import 'package:real_estate_app/responsive.dart';

import 'package:real_estate_app/widgets/mainWidget.dart';

import 'package:real_estate_app/widgets/menu.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: Responsive.isDesktop(context)
            ? null
            : AppBar(
                backgroundColor: kBgColor,
                // leading: Responsive.isDesktop(context)
                //     ? null
                //     : Builder(
                //         builder: (context) => IconButton(
                //             onPressed: () {
                //               Scaffold.of(context).openDrawer();
                //             },
                //             icon: Icon(Icons.menu)))),
              ),
        drawer: Responsive.isDesktop(context)
            ? null
            : Drawer(
                child: Menu(),
              ),
        body: SafeArea(
            child: Container(
          constraints: BoxConstraints(maxWidth: 1440),
          child: Responsive.isDesktop(context)
              ? Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Menu(),
                      flex: 2,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Main(),
                      flex: 7,
                    ),
                    SizedBox(
                      width: 20,
                    )
                  ],
                )
              : Main(),
        )));
  }
}
