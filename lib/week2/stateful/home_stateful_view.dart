import 'package:flutter/material.dart';
import 'package:flutter_learning/week2/core/components/card/user_card.dart';
import 'package:flutter_learning/week2/core/components/opacity/image_opacity.dart';
import 'package:flutter_learning/week2/core/enum/duration_enum.dart';
import 'package:flutter_learning/week2/core/image_manager.dart';
import 'package:flutter_learning/week2/stateless/home_detail_stateless.dart';

import 'model/user.dart';

class HomeViewStateful extends StatefulWidget {
  const HomeViewStateful({Key? key}) : super(key: key);

  @override
  _HomeViewStatefulState createState() => _HomeViewStatefulState();
}

class _HomeViewStatefulState extends State<HomeViewStateful> {
  bool _isLoading = true;
  late final ImageManager imageManager;
  late final User user;

  @override
  //Sayfa yüklendiğinde yapılacak şeyler burada
  void initState() {
    super.initState();
    waitForLoading();
    imageManager = ImageManager();
    user = User.exampleUser();
  }

  Future<void> waitForLoading() async {
    await Future.delayed(DurationEnums.LOW.time);
    setState(() {
      _isLoading = false;
    });
  }

  @override
  //Çıktığı an tetiklenen anlık
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          _isLoading ? CircularProgressIndicator() : FlutterLogo(),
          ImageOpacity(url: imageManager.randomImage),
          UserCard(
            user: user,
            onPressed: () {
              navigateDetail();
            },
          ),
        ],
      ),
    );
  }

  void navigateDetail() {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => HomeDetailStatless(model: user)));
  }
}
