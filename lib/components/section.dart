import 'package:flutter/material.dart';

class Section extends StatelessWidget {
  const Section({Key key, this.child, this.backgroundImg, this.backgroundColor})
      : super(key: key);
  final Widget child;
  final String backgroundImg;
  final Color backgroundColor;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height * 0.9;
    double width = MediaQuery.of(context).size.width;

    return Container(
        constraints:
            BoxConstraints(maxHeight: height, minHeight: 700, minWidth: width),
        decoration: BoxDecoration(
          color: backgroundColor != null ? backgroundColor : null,
          image: backgroundImg != null
              ? DecorationImage(
                  image: AssetImage(backgroundImg), fit: BoxFit.cover)
              : null,
        ),
        width: double.infinity,
        child: child);
  }
}
