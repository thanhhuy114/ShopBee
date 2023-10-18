import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            Row(
              children: <Widget>[
                IconButton(
                  icon: const Icon(Icons.home),
                  tooltip: 'Home',
                  hoverColor: Colors.orange,
                  onPressed: () {
                    // Xử lý khi nhấn nút Home
                  },
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width /
                      5, // Chia thành 5 phần bằng nhau
                ),
                IconButton(
                  icon: const Icon(Icons.shopping_cart),
                  tooltip: 'Shopping Cart',
                  hoverColor: Colors.orange,
                  onPressed: () {
                    // Xử lý khi nhấn nút Giỏ hàng
                  },
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width /
                      5, // Chia thành 5 phần bằng nhau
                ),
                IconButton(
                  icon: const Icon(Icons.notifications),
                  tooltip: 'Notifications',
                  hoverColor: Colors.orange,
                  onPressed: () {
                    // Xử lý khi nhấn nút Thông báo
                  },
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width /
                      5, // Chia thành 5 phần bằng nhau
                ),
                IconButton(
                  icon: const Icon(Icons.account_circle),
                  tooltip: 'Account',
                  hoverColor: Colors.orange,
                  onPressed: () {
                    // Xử lý khi nhấn nút Tài khoản
                  },
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width /
                      5, // Chia thành 5 phần bằng nhau
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
