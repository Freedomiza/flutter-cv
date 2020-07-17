import 'package:cv_app/components/rounded_button.dart';
import 'package:cv_app/components/section.dart';
import 'package:cv_app/components/work_section.dart';
import 'package:cv_app/theme.dart';
import 'package:flutter/material.dart';

class MySkill extends StatelessWidget {
  const MySkill({Key key, this.onNext, this.pageIndex}) : super(key: key);
  final Function onNext;
  final int pageIndex;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Stack(children: [
      Positioned(
        bottom: 10,
        left: width / 2 - 20,
        child: RoundedButton(
            icon: Icons.arrow_upward,
            color: Colors.black,
            onPress: () {
              onNext(0);
            }),
      ),
      Section(
        backgroundColor: kBackgroundColor1,
        noConstraint: true,
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: WorkSection(
            title: "MY SKILL",
            light: true,
            workDetails: [SkillChart()],
          ),
        ),
      )
    ]);
  }
}

class SkillChart extends StatelessWidget {
  const SkillChart({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(kDefaultPadding),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 40,
          ),
          Text(
            "Hardcore Frontend Developer, prefer DRY coding and KISS, design pattern over framework.",
            style: kBodyTextStyle,
          ),
          SizedBox(
            height: 40,
          ),
          ChartItem(title: "React", percent: 99),
          SizedBox(
            height: 20,
          ),
          ChartItem(title: "Javascript", percent: 90),
          SizedBox(
            height: 20,
          ),
          ChartItem(title: "React Native", percent: 80),
          SizedBox(
            height: 20,
          ),
          ChartItem(title: "Angular", percent: 70),
          SizedBox(
            height: 20,
          ),
          ChartItem(title: "Flutter", percent: 68),
          SizedBox(
            height: 20,
          ),
          ChartItem(title: "HTML/CSS", percent: 66),
          SizedBox(
            height: 20,
          ),
          ChartItem(title: "Nodejs/Express", percent: 58),
        ],
      ),
    );
  }
}

class ChartItem extends StatelessWidget {
  const ChartItem({
    Key key,
    this.title,
    this.percent,
  }) : super(key: key);

  final String title;
  final double percent;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
            width: 150,
            height: 30,
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                title,
                style: kBodyTextStyle,
              ),
            )),
        Expanded(
          flex: 1,
          child: Container(
            padding: EdgeInsets.only(left: kDefaultPadding),
            child: Stack(
              children: [
                ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: 500, maxHeight: 30),
                  child: Container(
                    padding: EdgeInsets.all(5),
                    color: Colors.white,
                  ),
                ),
                Positioned(
                  top: 2,
                  left: 2,
                  child: ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: 500, maxHeight: 26),
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 500),
                      width: (500 * (percent / 100) - 3),
                      padding: EdgeInsets.all(7),
                      color: Colors.black,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
