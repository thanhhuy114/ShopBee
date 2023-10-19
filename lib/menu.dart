import 'package:flutter/material.dart';
import 'package:testa/main.dart';

class MenuWidget extends StatefulWidget {
  const MenuWidget({super.key});

  @override
  State<MenuWidget> createState() => _MenuWidgetState();
}

class _MenuWidgetState extends State<MenuWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: colorTheme,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Menu',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Trang chủ'),
            onTap: () {
              // Xử lý khi người dùng chọn 'Home'
            },
          ),
          ListTile(
            leading: const Icon(Icons.account_circle),
            title: const Text('Thông tin tài khoản'),
            onTap: () {
              // Xử lý khi người dùng chọn 'Account'
            },
          ),
          ListTile(
            leading: const Icon(Icons.help),
            title: const Text('Hỗ trợ'),
            onTap: () {
              // Xử lý khi người dùng chọn 'Help Centre'
            },
          ),
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text('Đăng xuất'),
            onTap: () {
              // Xử lý khi người dùng chọn 'Log Out'
            },
          ),
        ],
      ),
    );
  }
}
