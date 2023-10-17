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
          title: const Text('Menu'),
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Menu',
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text('Home'),
                onTap: () {
                  // Xử lý khi người dùng chọn 'Home'
                },
              ),
              ListTile(
                leading: const Icon(Icons.account_circle),
                title: const Text('Account'),
                onTap: () {
                  // Xử lý khi người dùng chọn 'Account'
                },
              ),
              ListTile(
                leading: const Icon(Icons.help),
                title: const Text('Help Centre'),
                onTap: () {
                  // Xử lý khi người dùng chọn 'Help Centre'
                },
              ),
              ListTile(
                leading: const Icon(Icons.exit_to_app),
                title: const Text('Log Out'),
                onTap: () {
                  // Xử lý khi người dùng chọn 'Log Out'
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
