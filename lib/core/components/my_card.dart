/*
import 'package:flutter/material.dart';

import '../constants/extensions.dart';

///Create a mycard widget

class CompCard extends StatelessWidget {
  /// The [child] must not be null.
  ///
  final Widget child;
  final double? width;
  final double? height;

  ///If the [color] property is null this value [Colors.white].
  final Color? color;

  final EdgeInsetsGeometry? margin;

  ///If the [padding] property is null this value [context.highPadding]
  ///[context.highPadding] path: import '../constants/extensions.dart';
  final EdgeInsetsGeometry? padding;

  /// If the [elevation] property is null this value 5.
  final double? elevation;

  const CompCard(
      {Key? key,
      required this.child,
      this.width,
      this.height,
      this.color,
      this.margin,
      this.padding,
      this.elevation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color ?? Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      margin: margin ?? context.normalPadding,
      elevation: elevation ?? 5,
      child: Padding(
          padding: padding ?? context.highPadding,
          child: SizedBox(
            width: width,
            height: height,
            child: child,
          )),
    );
  }
}
*/
