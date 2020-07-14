import 'package:cv_app/ui/sections/about_me.dart';
import 'package:cv_app/ui/sections/my_skill.dart';
import 'package:cv_app/ui/sections/my_work.dart';
import 'package:cv_app/ui/sections/top-section.dart';
import 'package:flutter/material.dart';

import '../theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      //  AppBar(
      //   title: Text('App Bar'),
      //   backgroundColor: Colors.transparent,
      //   bottomOpacity: 0,
      //   // textTheme: context.,
      // ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [TopSection(), AboutMe(), MyWork(), MySkill()],
        ),
      ),
    );
  }
}
