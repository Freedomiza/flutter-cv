import 'package:cv_app/theme.dart';
import 'package:flutter/material.dart';

class HeaderButton extends StatefulWidget {
  const HeaderButton({
    Key key,
    this.title,
    this.onPress,
  }) : super(key: key);

  final title;
  final onPress;

  @override
  _HeaderButtonState createState() => _HeaderButtonState();
}

class _HeaderButtonState extends State<HeaderButton> {
  bool hover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: AnimatedContainer(
        padding: EdgeInsets.only(left: 10, right: 10),
        duration: Duration(milliseconds: 300),
        child: Text(
          widget.title,
          style: kHeader1.copyWith(
              color: hover ? kTextAssertiveColor : kTextColorLight),
        ),
      ),
      onTap: widget.onPress,
      onHover: (value) {
        setState(() {
          hover = value;
        });
      },
    );
  }
}
