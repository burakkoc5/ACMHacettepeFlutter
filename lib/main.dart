import 'package:flutter/material.dart';
import 'package:flutter_learning/week2/posts_json_placeholder/post_json_placeholder.dart';
import 'package:flutter_learning/week2/stateful/home_stateful_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: PostJsonPlaceholder(),
    );
  }
}
