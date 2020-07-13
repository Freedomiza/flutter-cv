import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key key,
    this.icon,
    this.onPress,
  }) : super(key: key);

  final icon;
  final onPress;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: IconButton(
        icon: Icon(icon),
        onPressed: onPress,
        color: Colors.white,
      ),
    );
  }
}
