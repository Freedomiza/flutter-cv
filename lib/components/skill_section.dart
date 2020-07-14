import 'package:cv_app/theme.dart';
import 'package:flutter/material.dart';

class SkillSection extends StatelessWidget {
  const SkillSection({Key key, this.title, this.details, this.extendedDetails})
      : super(key: key);

  final String title;
  final String details;
  final Widget extendedDetails;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: kTextColor,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          extendedDetails != null
              ? extendedDetails
              : Text(
                  details,
                  style: kBodyTextStyleDark,
                ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
