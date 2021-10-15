import 'package:flutter/material.dart';
import 'package:localfoods/core/constants/extensions.dart';

import '../core/components/my_scaffold.dart';
import '../core/widgets/my_appbar.dart';

class ViewRecipeDetail extends StatelessWidget {
  final String appBarText;
  final String image;
  final String detailText;

  const ViewRecipeDetail(
      {Key? key,
      required this.appBarText,
      required this.image,
      required this.detailText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MyScaffold(
      appBar: MyAppbar(
        title: Text(appBarText),
      ),
      body: Padding(
        padding: context.normalPadding,
        child: ListView(
          children: [
            Image.asset(image),
            context.tenSizedBox,
            Text(detailText),
          ],
        ),
      ),
    );
  }
}
