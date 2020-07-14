import 'package:cv_app/theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'dart:js' as js;

class LinkButton extends StatefulWidget {
  LinkButton({Key key, this.text, this.url}) : super(key: key);

  final String text;
  final String url;
  @override
  _LinkButtonState createState() => _LinkButtonState();
}

class _LinkButtonState extends State<LinkButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RichText(
        text: TextSpan(
          text: widget.text,
          style: kBodyTextStyle,
          recognizer: new TapGestureRecognizer()
            ..onTap = () {
              // launch('skype://freedom_iza');
              js.context.callMethod("open", [widget.url]);
            },
        ),
      ),
    );
  }
}
