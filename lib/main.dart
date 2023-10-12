import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Profile"),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {
                // Xử lý khi nhấn
              },
            )
          ],
          backgroundColor: const Color.fromRGBO(254, 161, 124, 1),
          leading: IconButton(
            onPressed: () {
              // Xử lý khi nhấn
            },
            icon: const Icon(Icons.menu),
          ),
        ),
        body: Column(children: [
          Row(
            children: [
              Column(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("assets/img/avatar.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                ],
              ),
              Column(

              )
            ],
          )
        ]),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          fixedColor:const  Color.fromRGBO(254, 161, 124, 1),
          items:const  [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: "Notifications",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
            ),
          ],
        ),
      ),
    ),
    debugShowCheckedModeBanner: false,
  ));
}