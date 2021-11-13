import 'package:flutter/material.dart';
import 'package:flutter_learning/week2/core/enum/duration_enum.dart';
import 'package:flutter_learning/week2/core/image_manager.dart';

class ImageOpacity extends StatefulWidget {
  final String url;
  const ImageOpacity({Key? key, required this.url}) : super(key: key);

  @override
  _ImageOpacityState createState() => _ImageOpacityState();
}

class _ImageOpacityState extends State<ImageOpacity> {
  bool _isOpacity = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _waitForTime();
  }

  Future<void> _waitForTime() async {
    await Future.delayed(DurationEnums.LOW.time);
    setState(() {
      _isOpacity = true;
    });
  }

  double get opacityValue => _isOpacity ? 1 : 0;

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: opacityValue,
      duration: DurationEnums.HIGH.time,
      child: Image.network(widget.url),
    );
  }
}
