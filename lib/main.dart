import 'package:flutter/material.dart';
import 'package:testa/theme_Personal_Info/profile.dart';
import 'menu.dart';
import 'theme_Personal_Info/orders_list.dart';
import 'theme_Personal_Info/statitics.dart';

void main() {
  runApp(const MyApp());
}

const Color colorTheme = Color.fromARGB(255, 253, 96, 50);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          //Menu
          backgroundColor: Colors.white,
          drawer: const MenuWidget(),
          //App bar
          appBar: AppBar(
            backgroundColor: colorTheme,
            centerTitle: true,
            title: const Text(
              'Thông Tin Cá Nhân',
              style: TextStyle(fontSize: 23.5, fontWeight: FontWeight.bold),
            ),
            actions: const [
              Padding(
                  padding: EdgeInsets.only(right: 15.0),
                  child: Icon(Icons.settings))
            ],
          ),

          bottomNavigationBar: DecoratedBox(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(80)),
            ),
            child: BottomNavigationBar(
              currentIndex: 3,
              fixedColor: colorTheme,
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.home_outlined,
                      color: Colors.black,
                    ),
                    label: 'Trang Chủ'),
                BottomNavigationBarItem(
                    icon:
                        Icon(Icons.shopping_cart_outlined, color: Colors.black),
                    label: 'Cửa Hàng'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.notifications_none_sharp,
                        color: Colors.black),
                    label: 'Thông Báo'),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.person_outline_outlined,
                    ),
                    label: 'Cá Nhân')
              ],
            ),
          ),

          body: Column(
            children: const [
              //Sử lý thông tin
              ProfileWidget(),
              StatisticsWidget(),
              OrderWidget(),
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
