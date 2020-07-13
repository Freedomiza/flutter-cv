import 'dart:html';

import 'package:cv_app/components/rounded_button.dart';
import 'package:cv_app/components/svg_button.dart';
import 'package:flutter/material.dart';

import '../../theme.dart';

final List<Map<String, String>> headerItems = [
  {"title": "Home", "url": "/"},
  {"title": "About", "url": "/"},
  {"title": "Resume", "url": "/"},
  {"title": "My Work", "url": "/"},
];

class TopSection extends StatelessWidget {
  const TopSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height * 0.9;
    double width = MediaQuery.of(context).size.width;
    return Container(
      constraints:
          BoxConstraints(maxHeight: height, minHeight: 700, minWidth: width),
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/header-background.jpg"),
            fit: BoxFit.cover),
      ),
      child: Column(
        children: [
          Container(
            height: 60,
            constraints: BoxConstraints(maxWidth: kMaxWidth),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: List.generate(
                  headerItems.length,
                  (index) => (InkWell(
                        focusColor: Colors.black,
                        child: Container(
                          padding: EdgeInsets.only(left: 10, right: 10),
                          child: Text(
                            headerItems[index]["title"],
                            style: kHeader1,
                          ),
                        ),
                        onTap: () {},
                      ))),
            ),
          ),
          Expanded(
              child: Stack(children: [
            Container(
                constraints: BoxConstraints(maxWidth: kMaxWidth),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(kDefaultPadding),
                      child: Text(
                        "I'm Khoa Le.",
                        style: kHeaderBig,
                      ),
                    ),
                    Container(
                      constraints: BoxConstraints(maxWidth: kMaxWidth * 0.6),
                      child: Text(
                        "I'm a fronted developer, creating awesome websites and mobile apps for clients of all sizes around the globe. Let's start scrolling and learn more about me.",
                        style: kSubHeaderText,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(kDefaultPadding),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          SVGButton(
                            iconUrl: 'images/svg/linkedin.svg',
                            onPress: () {},
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          SVGButton(
                            iconUrl: 'images/svg/github.svg',
                            onPress: () {},
                          ),
                        ],
                      ),
                    )
                  ],
                )),
            Positioned(
              bottom: 10,
              right: width / 2,
              child: RoundedButton(icon: Icons.arrow_downward, onPress: () {}),
            )
          ])),
        ],
      ),
      // height: height,
      width: double.infinity,
    );
  }
}
