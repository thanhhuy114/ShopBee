import 'package:flutter/material.dart';
import 'package:testa/bt2/listconten.dart';

class Post {
  List poster = List.generate(15, (index) => Content(tieuDe: "tieuDe", tomTat: "tomTat"));
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});
  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  final controller = ScrollController();
  Post post = Post();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        controller: controller,
        itemCount: post.poster.length + 1,
        itemBuilder: (context, index) {
          if(index < post.poster.length)
          {
            final item = post.poster[index];
            return Container(
            padding: const EdgeInsets.only(top: 10),
            child: item,
          );
          }
          return null;
        });
  }
}

// ignore: camel_case_types
class list_screen extends StatelessWidget {
  const list_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: MyWidget(),
    );
  }
}
