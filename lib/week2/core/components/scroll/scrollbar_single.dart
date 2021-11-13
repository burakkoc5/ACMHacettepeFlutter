import 'package:flutter/material.dart';

class ScrollbarSingle extends StatelessWidget {
  final Widget child;
  const ScrollbarSingle({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: SingleChildScrollView(
        child: child,
      ),
    );
  }
}
