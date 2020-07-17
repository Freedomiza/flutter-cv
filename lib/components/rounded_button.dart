import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({Key key, this.icon, this.onPress, this.color})
      : super(key: key);

  final color;
  final icon;
  final onPress;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: IconButton(
        icon: Icon(icon),
        onPressed: onPress,
        color: color != null ? color : Colors.white,
      ),
    );
  }
}
