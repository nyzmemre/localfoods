import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';

class MyAppbar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? title;
  @override
  final Size preferredSize;

  MyAppbar({Key? key, this.title})
      : preferredSize = Size.fromHeight(kToolbarHeight),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: title,
      backgroundColor: kAppbarColor,
    );
  }
}
