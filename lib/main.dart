import 'package:flutter/material.dart';
import 'package:testa/theme_Personal_Info/profile.dart';

import 'theme_Personal_Info/statitics.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          //Menu
          drawer: Drawer(
              child: ListView(
            children: <Widget>[
              const DrawerHeader(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(254, 161, 124, 1.0),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 15.0, top: 15.0),
                    child: Text(
                      'Shop Bee',
                      style: TextStyle(fontSize: 25.0),
                    ),
                  )),
              ListTile(
                title: const Text('Hướng dẫn'),
                leading: const Icon(Icons.book),
                onTap: () {},
              ),
              ListTile(
                title: const Text('Hướng dẫn'),
                leading: const Icon(Icons.book),
                onTap: () {},
              ),
              ListTile(
                title: const Text('Hướng dẫn'),
                leading: const Icon(Icons.book),
                onTap: () {},
              ),
              ListTile(
                title: const Text('Đăng Xuất'),
                leading: const Icon(Icons.logout),
                onTap: () {},
              )
            ],
          )),

          //App bar
          appBar: AppBar(
            backgroundColor: const Color.fromRGBO(254, 161, 124, 1),
            centerTitle: true,
            title: const Text(
              'Thông Tin Cá Nhân',
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
            ),
            actions: const [
              Padding(
                  padding: EdgeInsets.only(right: 15.0),
                  child: Icon(Icons.settings))
            ],
          ),

          bottomNavigationBar: BottomNavigationBar(
            currentIndex: 3,
            fixedColor: const Color.fromRGBO(254, 161, 124, 1),
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home_outlined,
                    color: Colors.black,
                  ),
                  label: 'Trang Chủ'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart_outlined, color: Colors.black),
                  label: 'Cửa Hàng'),
              BottomNavigationBarItem(
                  icon:
                      Icon(Icons.notifications_none_sharp, color: Colors.black),
                  label: 'Thông Báo'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person_outline_outlined,
                  ),
                  label: 'Cá Nhân')
            ],
          ),

          body: Column(
            children: const [
              //Sử lý hình ảnh và thông tin
              PersonalWidget(),
              StatisticsWidget(),
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
