import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CustomDialog extends ConsumerWidget {
  const CustomDialog({
    super.key,
    required this.titleText,
    this.child,
    this.btnLeftFunc,
    this.btnRightFunc,
    required this.btnLeftText,
    required this.btnRightText,
  });

  final String titleText;
  final Widget? child;
  final VoidCallback? btnLeftFunc;
  final VoidCallback? btnRightFunc;
  final String btnLeftText;
  final String btnRightText;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AlertDialog(
      title: Text(
        titleText,
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 16),
      ),
      content: child,
      actions: [
        TextButton(onPressed: btnLeftFunc, child: Text(btnLeftText)),
        TextButton(onPressed: btnRightFunc, child: Text(btnRightText)),
      ],
    );
  }
}
