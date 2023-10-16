import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: SafeArea(
      child: Scaffold(
        drawer: Drawer( 
          child: ListView( 
            children: const <Widget>[ 
              DrawerHeader( 
                decoration: BoxDecoration( 
                  color: Colors.green, 
                ), 
                child: Text('Menu', style: TextStyle( color: Colors.green, fontSize: 24, ),   ), 
              ), 
              ListTile( 
                title: Text('Item 1'), 
              ), 
              ListTile( 
                title: Text('Item 2'), 
              ), 
            ], 
          ),
        ),


        appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color.fromRGBO(254, 161, 124, 1),
          actions: const <Widget>[
            
            Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: Icon(Icons.settings),
            )
          ],
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
              const Column(

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
              icon: Icon(Icons.shopify_outlined),
              label: "Shop",
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