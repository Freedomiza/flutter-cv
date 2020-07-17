import 'package:cv_app/ui/sections/about_me.dart';
import 'package:cv_app/ui/sections/my_skill.dart';
import 'package:cv_app/ui/sections/my_work.dart';
import 'package:cv_app/ui/sections/top-section.dart';
import 'package:flutter/material.dart';

import '../theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;

  PageController _controller = PageController(
    initialPage: 0,
  );

  void nextPage(int index) {
    setState(() {
      if (index >= 0) {
        pageIndex = index;
      } else {
        pageIndex = pageIndex + 1;
      }
      _controller.animateToPage(pageIndex,
          duration: Duration(milliseconds: 400), curve: Curves.easeInOut);
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  AppBar(
      //   title: Text('App Bar'),
      //   backgroundColor: Colors.transparent,
      //   bottomOpacity: 0,
      //   // textTheme: context.,
      // ),
      body: PageView(
        controller: _controller,
        scrollDirection: Axis.vertical,
        physics: NeverScrollableScrollPhysics(),
        children: [
          TopSection(
            onNext: nextPage,
            pageIndex: 0,
          ),
          AboutMe(
            onNext: nextPage,
            pageIndex: 1,
          ),
          MyWork(
            onNext: nextPage,
            pageIndex: 2,
          ),
          MySkill(
            onNext: nextPage,
            pageIndex: 3,
          )
        ],
      ),
    );
  }
}
