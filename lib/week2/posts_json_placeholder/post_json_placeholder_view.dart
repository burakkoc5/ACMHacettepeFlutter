import 'package:flutter/material.dart';
import './post_json_placeholder_view_model.dart';

class PostJsonPlaceholderView extends PostJsonPlaceHolderViewModel {
  final String title = "Json Placeholder";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: isLoading
          ? Center(child: LinearProgressIndicator())
          : ListView.builder(
              itemCount: postItems?.length,
              itemBuilder: (context, index) => Card(
                child: ListTile(
                  leading: CircleAvatar(
                    child: Text(postItems?[index].id.toString() ?? ""),
                  ),
                  title: Text(postItems?[index].title ?? ""),
                ),
              ),
            ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: Theme.of(context)
            .textTheme
            .headline4
            ?.copyWith(color: Theme.of(context).colorScheme.surface),
      ),
    );
  }
}
