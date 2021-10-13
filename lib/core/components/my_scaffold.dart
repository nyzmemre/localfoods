import 'package:flutter/material.dart';

class MyScaffold extends StatelessWidget {
  final PreferredSizeWidget? appBar;
  final Widget? body;
  const MyScaffold({Key? key, this.appBar, this.body}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: appBar,
      body: body,
    ));
  }
}
