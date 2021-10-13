import 'package:flutter/material.dart';

import '../constants/extensions.dart';

class CompCard extends StatelessWidget {
  final Widget? child;
  final double? width;
  final double? height;
  final Color? color;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final double? elevation;

  const CompCard({Key? key, @required this.child, this.width, this.height, this.color, this.margin, this.padding, this.elevation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Card(
      color: color ?? Colors.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)
      ),
      margin: margin ?? context.normalPadding,
      elevation: elevation ?? 5,
      child: Padding(
          padding: padding ?? context.highPadding,
          child: SizedBox(
            width: width,
            height: height,
            child: child,
          )
      ),
    );

  }
}