import 'package:flutter/material.dart';
import 'package:flutter_learning/week2/posts_json_placeholder/service/placeholder_service.dart';
import './post_json_placeholder.dart';
import 'model/post_model.dart';

abstract class PostJsonPlaceHolderViewModel extends State<PostJsonPlaceholder> {
  //Add your state and logic here
  bool isLoading = true;
  final PlaceholderService placeholderService = PlaceholderService();

  List<PostModel>? postItems = [];

  @override
  void initState() {
    super.initState();
    fetcAllDatas();
  }

  Future<void> fetcAllDatas() async {
    final response = await placeholderService.fetchPostItem();

    postItems = response;
    _changeLoading();
  }

  void _changeLoading() {
    setState(() {
      isLoading = false;
    });
  }
}
