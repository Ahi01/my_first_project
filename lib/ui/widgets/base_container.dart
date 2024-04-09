import 'package:flutter/material.dart';

class BaseContainer extends StatelessWidget {
  const BaseContainer({
    super.key,
    required this.child,
     this.width,
    this.padding = const EdgeInsets.only(left: 12),
    this.margin,
  });
  final Widget child;
  final double? width;
  final EdgeInsets? padding;
  final EdgeInsets? margin;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      width: width,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color: theme.cardColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: child,
    );
  }
}