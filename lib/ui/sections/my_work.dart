import 'package:cv_app/components/rounded_button.dart';
import 'package:cv_app/components/section.dart';
import 'package:cv_app/components/skill_section.dart';
import 'package:cv_app/components/work_section.dart';
import 'package:cv_app/theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'dart:js' as js;

class MyWork extends StatelessWidget {
  const MyWork({Key key, this.onNext, this.pageIndex}) : super(key: key);
  final Function onNext;
  final int pageIndex;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Stack(alignment: Alignment.center, children: [
      Container(
        height: MediaQuery.of(context).size.height * 0.9,
        child: SingleChildScrollView(
          padding: EdgeInsets.all(kDefaultPadding),
          child: Section(
            backgroundColor: kBackgroundColorLight,
            noConstraint: true,
            height: 3000,
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  WorkSection(
                    title: "EDUCATION",
                    workDetails: [
                      SkillSection(
                        title: "University of Technology and Education",
                        details:
                            "Bachelor of Information Technology•April 2013",
                      )
                    ],
                  ),
                  WorkSection(
                    title: "WORK",
                    workDetails: [
                      SkillSection(
                        title: "Hubble Map Realtime Web App",
                        extendedDetails: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                                text: TextSpan(
                              text: "Freelancer Job",
                              style: kBodyTextStyleDark,
                            )),
                            RichText(
                                text: TextSpan(
                              text:
                                  "Senior React Frontend Developer•January 2020 - March 2020\n",
                              style: kBodyTextStyleDark,
                            )),
                            RichText(
                                text: TextSpan(
                              text: "Website for:\n" +
                                  " - Tracking worker realtime location in a construction site\n" +
                                  " - Tracking overral contruction process\n"
                                      " - Tracing and rectify defect",
                              style: kBodyTextStyleDark,
                            )),
                            RichText(
                                text: TextSpan(
                              text:
                                  "Technology: php, React Redux, SocketIO, Antd, Autodesk Forge SDK\n",
                              style: kBodyTextStyleDark,
                            )),
                            RichText(
                                text: TextSpan(
                              text: "Live development",
                              style: kBodyTextStyleDark.copyWith(
                                  decoration: TextDecoration.underline,
                                  decorationColor: kTextHighlightColor),
                              recognizer: new TapGestureRecognizer()
                                ..onTap = () {
                                  // launch('skype://freedom_iza');
                                  js.context.callMethod(
                                      "open", ["https://maps-dev.hubble.sg/"]);
                                },
                            )),
                          ],
                        ),
                      ),
                      SkillSection(
                        title: "Truckster Web",
                        extendedDetails: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                                text: TextSpan(
                              text: "Launchdeck LLC",
                              style: kBodyTextStyleDark,
                            )),
                            RichText(
                                text: TextSpan(
                              text:
                                  "Senior React Frontend Developer•December 2019 - Present\n",
                              style: kBodyTextStyleDark,
                            )),
                            RichText(
                                text: TextSpan(
                              text:
                                  "Foodtruck serving platform for trucks owner and customer alike\n",
                              style: kBodyTextStyleDark,
                            )),
                            RichText(
                                text: TextSpan(
                              text:
                                  "Technology: php, React + Nextjs, Redux, Antd\n",
                              style: kBodyTextStyleDark,
                            )),
                            RichText(
                                text: TextSpan(
                              text: "Live production",
                              style: kBodyTextStyleDark.copyWith(
                                  decoration: TextDecoration.underline,
                                  decorationColor: kTextHighlightColor),
                              recognizer: new TapGestureRecognizer()
                                ..onTap = () {
                                  // launch('skype://freedom_iza');
                                  js.context.callMethod(
                                      "open", ["https://gotruckster.com/"]);
                                },
                            )),
                          ],
                        ),
                      ),
                      SkillSection(
                        title: "Restoration AI",
                        extendedDetails: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                                text: TextSpan(
                              text: "Launchdeck LLC",
                              style: kBodyTextStyleDark,
                            )),
                            RichText(
                                text: TextSpan(
                              text:
                                  "Senior React Frontend December 2019 - Present\n",
                              style: kBodyTextStyleDark,
                            )),
                            RichText(
                                text: TextSpan(
                              text:
                                  "Roof waste calulation web app, provide user with supplement information for tracking current budget, with email notification and dynamic report generation tools\n",
                              style: kBodyTextStyleDark,
                            )),
                            RichText(
                                text: TextSpan(
                              text:
                                  "Technology: php, React Redux, Offline First Storage\n",
                              style: kBodyTextStyleDark,
                            )),
                            RichText(
                                text: TextSpan(
                              text: "Live development",
                              style: kBodyTextStyleDark.copyWith(
                                  decoration: TextDecoration.underline,
                                  decorationColor: kTextHighlightColor),
                              recognizer: new TapGestureRecognizer()
                                ..onTap = () {
                                  // launch('skype://freedom_iza');
                                  js.context.callMethod("open",
                                      ["https://www.restorationai.com/"]);
                                },
                            )),
                          ],
                        ),
                      ),
                      SkillSection(
                        title: "Essilor Digital Catalog",
                        extendedDetails: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                                text: TextSpan(
                              text: "Business4You",
                              style: kBodyTextStyleDark,
                            )),
                            RichText(
                                text: TextSpan(
                              text:
                                  "Senior React Frontend Developer June 2018 - December 2019\n",
                              style: kBodyTextStyleDark,
                            )),
                            RichText(
                                text: TextSpan(
                              text:
                                  "Essilor is a French-based international ophthalmic optics company that designs, manufactures and markets lenses to correct or protect eyesight.\n",
                              style: kBodyTextStyleDark,
                            )),
                            RichText(
                                text: TextSpan(
                              text:
                                  "Technology: Lavarel, React, Redux, Offline Storage\n",
                              style: kBodyTextStyleDark,
                            )),
                            RichText(
                                text: TextSpan(
                              text: "Demo site",
                              style: kBodyTextStyleDark.copyWith(
                                  decoration: TextDecoration.underline,
                                  decorationColor: kTextHighlightColor),
                              recognizer: new TapGestureRecognizer()
                                ..onTap = () {
                                  // launch('skype://freedom_iza');
                                  js.context.callMethod("open",
                                      ["https://webox-212807.appspot.com/"]);
                                },
                            )),
                          ],
                        ),
                      ),
                      SkillSection(
                        title: "REMOVALIST Mobile App",
                        extendedDetails: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                                text: TextSpan(
                              text: "Logix Technology",
                              style: kBodyTextStyleDark,
                            )),
                            RichText(
                                text: TextSpan(
                              text:
                                  "Mobile Lead / Technical Support•August 2017 - Decemeber 2017\n",
                              style: kBodyTextStyleDark,
                            )),
                            RichText(
                                text: TextSpan(
                              text: "Removalist app is an React Native for Vanman delivery company, which allow user to:\n" +
                                  "- Book delivery jobs for driver\n" +
                                  "- Manage delivery status" +
                                  "- Contact drivers / operators via built-in Chat app\n",
                              style: kBodyTextStyleDark,
                            )),
                            RichText(
                                text: TextSpan(
                              text:
                                  "Technology: .Net Core, WebAPI, Auth0, React Native",
                              style: kBodyTextStyleDark,
                            )),
                          ],
                        ),
                      ),
                      SkillSection(
                        title: "JELMOLI Mobile Portal",
                        extendedDetails: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                                text: TextSpan(
                              text: "Logix Technology",
                              style: kBodyTextStyleDark,
                            )),
                            RichText(
                                text: TextSpan(
                              text:
                                  "Frontend Developer / Mobile Lead•January 2017 - June 2018\n",
                              style: kBodyTextStyleDark,
                            )),
                            RichText(
                                text: TextSpan(
                              text:
                                  "Jelmoli Mobile Portal is collaboration mobile app to access Jelmoli Intranet Portal on-the-go. It helps 600 employees of Jelmoli department store stay away from their laptop. Now they access the portal to get their tasks, read the internal news and the manager level can update the live sales report anywhere and anytime.\n",
                              style: kBodyTextStyleDark,
                            )),
                            RichText(
                                text: TextSpan(
                              text:
                                  "Technology: .Net 4.5, SharePoint 2013, WebAPI, AngularJS, IONIC",
                              style: kBodyTextStyleDark,
                            )),
                          ],
                        ),
                      ),
                      SkillSection(
                        title: "JELMOLI SMART",
                        extendedDetails: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                                text: TextSpan(
                              text: "Logix Technology",
                              style: kBodyTextStyleDark,
                            )),
                            RichText(
                                text: TextSpan(
                              text:
                                  "AngularJS Frontend Developer•January 2015 - November 2017",
                              style: kBodyTextStyleDark,
                            )),
                            RichText(
                                text: TextSpan(
                              text:
                                  '''Jelmoli SMART is able to decrease the organization’s IT costs; replace outdated infrastructure and applications with a Web Based application. The solution is supported by a secure, private cloud infrastructure. Comprehensive, role based access control is provided by Microsoft Active Directory.
- Data Integration across all lines of business
- Insight into business performance through the Business Intelligence solution
- Achieve new levels of success and financial performance through enhanced collaboration at all levels of the organization
- Reduce IT costs by: Eliminating outdated technologies and hardware
- Reduced IT Capital spending through the adoption of a cloud based infrastructure\n
''',
                              style: kBodyTextStyleDark,
                            )),
                            RichText(
                                text: TextSpan(
                              text:
                                  "Technology: .Net 4.5, SharePoint 2013, WebAPI, AngularJS, IONIC",
                              style: kBodyTextStyleDark,
                            )),
                          ],
                        ),
                      ),
                      SkillSection(
                        title: "KIEWIT LUCY - INEIGHT",
                        extendedDetails: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                                text: TextSpan(
                              text: "DXC",
                              style: kBodyTextStyleDark,
                            )),
                            RichText(
                                text: TextSpan(
                              text:
                                  "Associate Software Engineer•February 2013 - February Decemeber 2014\n",
                              style: kBodyTextStyleDark,
                            )),
                            RichText(
                                text: TextSpan(
                              text:
                                  "Kiewit Lucy is an enterprise web application that provides artifact and model management system for Kiewit company. It also helps their users to view the 3D model on the web with the best user experience.",
                              style: kBodyTextStyleDark,
                            )),
                            RichText(
                                text: TextSpan(
                              text:
                                  "Technology: .Net 4.0, ASP.Net MVC, JavaScript & CSS, Telerik Kendo UI",
                              style: kBodyTextStyleDark,
                            )),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      Positioned(
        bottom: 10,
        left: width / 2 - 20,
        child: RoundedButton(
            icon: Icons.arrow_downward,
            color: Colors.black,
            onPress: () {
              onNext(pageIndex + 1);
            }),
      )
    ]);
  }
}
