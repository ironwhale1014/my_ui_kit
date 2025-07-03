import 'package:flutter/material.dart';

class BaseCard extends StatelessWidget {
  const BaseCard(
      {super.key,
      required this.title,
      this.lastStudyDate,
      this.onTap,
      this.backgroundColor,
      this.onDoubleTap,
      this.onLongPress,
      this.editBtnPressed,
      this.reviewCount});

  final String title;
  final String? lastStudyDate;
  final GestureTapCallback? onTap;
  final Color? backgroundColor;
  final GestureTapCallback? onDoubleTap;
  final GestureTapCallback? onLongPress;
  final VoidCallback? editBtnPressed;
  final int? reviewCount;

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
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(fontSize: 24),
                      textAlign: TextAlign.center,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        lastStudyDate != null
                            ? Text('공부한지 $lastStudyDate 전')
                            : Container(),
                        reviewCount != null
                            ? Text('공부 횟수 : $reviewCount 회')
                            : Container()
                      ],
                    )
                  ],
                ),
              ),
              IconButton(
                  onPressed: editBtnPressed, icon: const Icon(Icons.edit))
            ],
          ),
        ),
      ),
    );
  }
}
