import 'package:flutter/material.dart';
import 'package:tugasmobile/model/model.dart';
import 'package:tugasmobile/widgets/post_app_bar.dart';
import 'package:tugasmobile/widgets/post_bottom_bar.dart';

class PostScreen extends StatelessWidget {
  final Model model;

  const PostScreen({super.key, required this.model});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(model.url),
          fit: BoxFit.cover,
          opacity: 0.7,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(90),
          child: PostAppBar(),
        ),
        bottomNavigationBar: PostBottomBar(
          model: model,
        ),
      ),
    );
  }
}
