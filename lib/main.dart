import 'package:flutter/material.dart';

import 'core/constants/texts.dart';
import 'core/widgets/my_appbar.dart';
import 'screens/view_homepage.dart';

void main() {
  runApp(LocalFoods());
}

class LocalFoods extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        //theme: ThemeData(),
        home: SafeArea(
            child: Scaffold(
          appBar: MyAppbar(
            title: Text(appName),
          ),
          body: ViewHomepage(),
        )));
  }
}
