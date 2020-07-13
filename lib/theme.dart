import 'package:cv_app/utils/hex_color.dart';
import 'package:flutter/material.dart';

const kMaxWidth = 1100.0;

const kTextColor = Color(0xFF707070);
const kTextLightColor = Color(0xFF555555);
final kTextAssertiveColor = HexColor.fromHex("#f06000");
final kHeaderHeight = 60;
final kBackgroundColor1 = HexColor.fromHex("#2b2b2b");
final kTextColorLight = HexColor.fromHex("#ffffff");
const kDefaultPadding = 20.0;

final kDefaultShadow = BoxShadow(
  offset: Offset(0, 50),
  blurRadius: 50,
  color: Color(0xFF0700B1).withOpacity(0.15),
);

final kDefaultCardShadow = BoxShadow(
  offset: Offset(0, 20),
  blurRadius: 50,
  color: Colors.black.withOpacity(0.1),
);

// TextField dedign
final kDefaultInputDecorationTheme = InputDecorationTheme(
  border: kDefaultOutlineInputBorder,
  enabledBorder: kDefaultOutlineInputBorder,
  focusedBorder: kDefaultOutlineInputBorder,
);

final kDefaultOutlineInputBorder = OutlineInputBorder(
  // Maybe flutter team need to fix it on web
  // borderRadius: BorderRadius.circular(50),
  borderSide: BorderSide(
    color: Color(0xFFCEE4FD),
  ),
);

final kHeader1 = TextStyle(fontSize: 14, color: kTextColorLight);

final kHeaderBig = TextStyle(fontSize: 80, color: kTextColorLight, shadows: [
  Shadow(
    blurRadius: 10.0,
    color: Colors.white.withOpacity(0.4),
    offset: Offset(3.0, 3.0),
  ),
]);

final kSubHeaderText =
    TextStyle(fontSize: 18, color: HexColor.fromHex("#a8a8a8"), shadows: [
  Shadow(
    blurRadius: 10.0,
    color: HexColor.fromHex("#a8a8a8").withOpacity(0.4),
    offset: Offset(3.0, 3.0),
  ),
]);

final kBodyTextStyle = TextStyle(
  color: HexColor.fromHex("#FFFFFF"),
  fontSize: 18,
  letterSpacing: 1,
  wordSpacing: 2,
  // fontWeight: FontWeight.bold,
);
