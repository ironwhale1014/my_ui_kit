import 'package:flutter/material.dart';

class BaseCard extends StatelessWidget {
  const BaseCard({
    super.key,

    this.lastStudyDate,
    this.onTap,
    this.backgroundColor,
    this.onDoubleTap,
    this.onLongPress,
    this.editBtnPressed,
    this.reviewCount,
    required this.child,
  });

  final String? lastStudyDate;
  final GestureTapCallback? onTap;
  final Color? backgroundColor;
  final GestureTapCallback? onDoubleTap;
  final GestureTapCallback? onLongPress;
  final VoidCallback? editBtnPressed;
  final int? reviewCount;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onDoubleTap: onDoubleTap,
      onLongPress: onLongPress,
      onTap: onTap,
      child: Card.outlined(
        margin: const EdgeInsets.only(bottom: 8, top: 8),
        color: backgroundColor ?? Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: child,
        ),
      ),
    );
  }
}
