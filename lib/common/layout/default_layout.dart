import 'package:flutter/material.dart';

class DefaultLayout extends StatelessWidget {
  final Widget child;
  final Color? backgroundColor;
  final Widget? bottomNavigationBar;
  final Widget? floatingActionButton;
  final String? title;
  final List<Widget>? actions;

  const DefaultLayout({
    super.key,
    required this.child,
    this.backgroundColor,
    this.bottomNavigationBar,
    this.floatingActionButton,
    this.title,
    this.actions,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: renderAppbar(),
      body: child,
      backgroundColor: backgroundColor ?? Colors.white,
      floatingActionButton: floatingActionButton,
      bottomNavigationBar: bottomNavigationBar,
    );
  }

  AppBar? renderAppbar() {
    if (title == null) {
      return null;
    } else {
      return AppBar(
        backgroundColor: Colors.white,
        title: Text(title!),
        actions: actions,
      );
    }
  }
}
