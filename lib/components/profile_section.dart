import 'package:cv_app/theme.dart';
import 'package:flutter/material.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection(
      {Key key, this.title, this.details, this.extendedDetails})
      : super(key: key);

  final String title;
  final String details;
  final Widget extendedDetails;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: kTextLightColor,
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
                  style: kBodyTextStyle,
                ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
