import 'package:cv_app/components/profile_section.dart';
import 'package:cv_app/components/section.dart';
import 'package:cv_app/theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'dart:js' as js;

class AboutMe extends StatelessWidget {
  const AboutMe({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Section(
      backgroundColor: kBackgroundColor1,
      noConstraint: false,
      child: Container(
        width: double.infinity,
        constraints: BoxConstraints(maxWidth: 1100),
        padding: EdgeInsets.all(40),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                width: 300,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(128),
                  clipBehavior: Clip.antiAlias,
                  child: Image.asset(
                    "assets/images/47566685.png",
                    width: 120,
                    height: 120,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.7,
                height: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ProfileSection(
                        title: "About Me",
                        details:
                            "I’m a 7-year experienced developer in software/mobile development." +
                                "\nExperienced in the framework like React, AngularJS, Antd, Bootstraps, Kendo UI and hybrid mobile apps like React Native and Ionic / Cordova. I would love to research new web technologies and building a cool product based on mobile or web application."),
                    ProfileSection(
                        title: "Contact Details",
                        extendedDetails: RichText(
                            text: TextSpan(children: [
                          TextSpan(
                            text: "Le Dang Khoa\n\n",
                            style: kBodyTextStyle,
                          ),
                          TextSpan(
                            text: "Phone: (+84) 767102000\n",
                            style: kBodyTextStyle,
                            recognizer: new TapGestureRecognizer()
                              ..onTap = () {
                                // launch('skype://freedom_iza');
                                js.context
                                    .callMethod("open", ["tel://+84767102000"]);
                              },
                          ),
                          TextSpan(
                            text: "Skype: freedom_iza",
                            style: kBodyTextStyle,
                            recognizer: new TapGestureRecognizer()
                              ..onTap = () {
                                // launch('skype://freedom_iza');
                                js.context.callMethod(
                                    "open", ["skype://freedom_iza"]);
                              },
                          ),
                        ])))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
