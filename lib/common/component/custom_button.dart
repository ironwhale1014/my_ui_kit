import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.onPressed,
      required this.btnText,
      this.btnFontSize = 16.0,
      this.color = Colors.transparent});

  final VoidCallback? onPressed;
  final String btnText;
  final double btnFontSize;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minHeight: 48),
      decoration: BoxDecoration(
        color: color,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey, width: 0.5)),
      child: MaterialButton(
          onPressed: onPressed,
          child: Text(
            btnText,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: btnFontSize),
          )),
    );
  }
}
