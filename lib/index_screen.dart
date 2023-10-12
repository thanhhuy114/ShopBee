import 'package:flutter/material.dart';
import 'bottom_nav.dart';

class IndexScreen extends StatelessWidget {
  const IndexScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Trang chủ')),
      body: const Text('Index Screen'),
      bottomNavigationBar: const BottomNav(idx: 0),
    );
  }
}
