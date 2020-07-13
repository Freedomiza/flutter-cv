import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';

class SVGButton extends StatefulWidget {
  const SVGButton({
    Key key,
    this.iconUrl,
    this.onPress,
  }) : super(key: key);

  final iconUrl;
  final onPress;

  @override
  _SVGButtonState createState() => _SVGButtonState();
}

class _SVGButtonState extends State<SVGButton> {
  bool _isHover = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPress,
      onHover: (value) {
        setState(() {
          _isHover = value;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        padding: EdgeInsets.all(3),
        // color: _isHover ? Colors.white : Colors.transparent,
        decoration: BoxDecoration(
            color: _isHover ? Colors.white : Colors.transparent,
            borderRadius: BorderRadius.circular(4)),
        child: WebsafeSvg.asset(widget.iconUrl,
            width: 30,
            height: 30,
            color: _isHover ? Colors.black : Colors.white),
      ),
      // icon: SvgPicture.asset(
      //     "assets/images/svg/linkedin.svg"),
    );
  }
}
