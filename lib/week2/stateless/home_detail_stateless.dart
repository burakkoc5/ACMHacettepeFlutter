import 'package:flutter/material.dart';
import 'package:flutter_learning/week2/core/components/scroll/scrollbar_single.dart';
import 'package:flutter_learning/week2/stateful/model/user.dart';

class HomeDetailStatless extends StatelessWidget {
  final User model;

  const HomeDetailStatless({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(model.title)),
      body: ScrollbarSingle(
        child: Text(model.storyText),
      ),
    );
  }
}
