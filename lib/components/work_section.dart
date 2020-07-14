import 'package:cv_app/theme.dart';
import 'package:cv_app/utils/hex_color.dart';
import 'package:flutter/material.dart';

class WorkSection extends StatelessWidget {
  const WorkSection({
    Key key,
    this.title,
    this.workDetails,
    this.subtitle,
    this.light,
  }) : super(key: key);
  final bool light;
  final String title;
  final String subtitle;
  final List<Widget> workDetails;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: Container(
                width: 300,
                // height: 100,
                padding: EdgeInsets.all(kDefaultPadding),
                alignment: Alignment.topRight,
                child: Container(
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              width: 2, color: kTextHighlightColor))),
                  child: RichText(
                      text: TextSpan(
                    text: title,
                    style: TextStyle(
                      color: light == true ? kTextColorLight : kTextColor,
                      fontSize: kHeadingFontSize,
                    ),
                  )),
                )),
          ),
          Expanded(
            flex: 2,
            child: Container(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: workDetails,
              ),
            ),
          )
        ],
      ),
    );
  }
}
