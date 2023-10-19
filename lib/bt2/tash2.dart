import 'package:flutter/material.dart';

class Post {
  List poster = List.generate(15, (index) => null);
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});
  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  final controller = ScrollController();
  Post post = new Post();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        controller: controller,
        itemCount: post.poster.length + 1,
        itemBuilder: (context, index) {
          final item = post.poster[index];
          return Container(
            padding: const EdgeInsets.only(top: 10),
            child: item,
          );
        });
  }
}
