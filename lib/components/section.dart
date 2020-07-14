import 'package:flutter/material.dart';

class Section extends StatelessWidget {
  const Section(
      {Key key,
      this.child,
      this.backgroundImg,
      this.backgroundColor,
      this.height,
      this.noConstraint})
      : super(key: key);
  final Widget child;
  final String backgroundImg;
  final Color backgroundColor;
  final double height;
  final bool noConstraint;
  @override
  Widget build(BuildContext context) {
    double defaultHeight = this.height != null && this.height > 0
        ? this.height
        : MediaQuery.of(context).size.height * 0.9;
    double width = MediaQuery.of(context).size.width;

    return Container(
        width: width,
        constraints: BoxConstraints(minHeight: 400, maxHeight: defaultHeight),
        decoration: BoxDecoration(
          color: backgroundColor != null ? backgroundColor : null,
          image: backgroundImg != null
              ? DecorationImage(
                  image: AssetImage(backgroundImg), fit: BoxFit.cover)
              : null,
        ),
        // width: double.infinity,
        child: Container(
            constraints: BoxConstraints(
              minHeight: 100,
              maxWidth: 1140,
              minWidth: 400,
            ),
            child: child));
  }
}
