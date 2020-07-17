import 'package:cv_app/components/header_button.dart';
import 'package:cv_app/components/rounded_button.dart';
import 'package:cv_app/components/section.dart';
import 'package:cv_app/components/svg_button.dart';
import 'package:flutter/material.dart';
import 'dart:js' as js;

import '../../theme.dart';

final List<Map<String, dynamic>> headerItems = [
  {"title": "Home", "index": 0},
  {"title": "About", "index": 1},
  {"title": "My Work", "index": 2},
  {"title": "My Skill", "index": 3},
];

class TopSection extends StatelessWidget {
  const TopSection({Key key, this.onNext, this.pageIndex}) : super(key: key);

  final Function onNext;
  final int pageIndex;
  @override
  Widget build(BuildContext context) {
    // double height = MediaQuery.of(context).size.height * 0.9;
    double width = MediaQuery.of(context).size.width;
    return Section(
        backgroundImg: "assets/images/header-background.jpg",
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: 10,
              child: Container(
                height: 60,
                width: double.infinity,
                alignment: Alignment.center,
                constraints: BoxConstraints(maxWidth: kMaxWidth),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: List.generate(
                      headerItems.length,
                      (index) => (HeaderButton(
                            title: headerItems[index]["title"],
                            onPress: () {
                              onNext(headerItems[index]['index']);
                            },
                          ))),
                ),
              ),
            ),
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
                            iconUrl: 'assets/images/svg/linkedin.svg',
                            onPress: () {
                              js.context.callMethod("open", [
                                "https://www.linkedin.com/in/khoa-le-b31b22a8/"
                              ]);
                            },
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          SVGButton(
                            iconUrl: 'assets/images/svg/github.svg',
                            onPress: () {
                              js.context.callMethod(
                                  "open", ["https://github.com/Freedomiza"]);
                            },
                          ),
                        ],
                      ),
                    )
                  ],
                )),
            Positioned(
              bottom: 10,
              left: width / 2 - 20,
              child: RoundedButton(
                  icon: Icons.arrow_downward,
                  onPress: () {
                    onNext(pageIndex + 1);
                  }),
            )
          ],
        )
        // height: height,
        );
  }
}
