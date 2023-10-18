import 'package:flutter/material.dart';

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
            child:ListView(
              children: <Widget>[
                const DrawerHeader(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(254, 161, 124, 1.0),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 15.0,top: 15.0),
                    child:Text('Shop Bee',style: TextStyle(fontSize: 25.0),),
                  )
                ),

                ListTile(
                  title: const Text('Hướng dẫn'),
                  leading: const Icon(Icons.book),
                  onTap:(){},
                ),
                ListTile(
                  title: const Text('Hướng dẫn'),
                  leading: const Icon(Icons.book),
                  onTap:(){},
                ),
                ListTile(
                  title: const Text('Hướng dẫn'),
                  leading:const  Icon(Icons.book),
                  onTap:(){},
                ),
                ListTile(
                  title:const Text('Đăng Xuất'),
                  leading: const Icon(Icons.logout),
                  onTap: () {
                  },
                )
              ],
            )
          ),

          //App bar
          appBar: AppBar(
            backgroundColor:const  Color.fromRGBO(254,161,124,1),
            centerTitle: true,

            title:const Text('Thông Tin Cá Nhân',style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),),
            
            actions: const [
              Padding(
                padding:EdgeInsets.only(right: 15.0),
                child:Icon(Icons.settings)
              )
            ],
          ),


          bottomNavigationBar: BottomNavigationBar(
            currentIndex: 3,
            fixedColor:const  Color.fromRGBO(254,161,124,1),
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined,color: Colors.black,),
                label: 'Trang Chủ'
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_outlined,color: Colors.black),
                label: 'Cửa Hàng'
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.notifications_none_sharp,color: Colors.black),
                label: 'Thông Báo'
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline_outlined,),
                label: 'Cá Nhân'
              )
            ],
          ),
          

          body: Column(
            children:  [

              //Sử lý hình ảnh và thông tin
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    border: Border.all(
                      color: const  Color.fromRGBO(254, 161, 124, 1.0),
                      width: 3.0
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(

                      children: [
                        
                        ClipOval(
                          child: Image.asset("assets/img/avatar.png",width: 110.0,height: 110.0,fit: BoxFit.cover,),
                        ),
                        
                                
                        const Padding(
                          padding: EdgeInsets.only(left: 25.0), 
                          child:Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Tên: Lê Văn C',style: TextStyle(fontSize: 17.0,color: Colors.black),),
                              Text('Ngày Sinh: 01/01/2003',style: TextStyle(fontSize: 17.0,color: Colors.black),),
                              Text('SĐT: 0333333333',style: TextStyle(fontSize: 17.0,color: Colors.black),),
                              Text('Email: abc@gmail.com',style: TextStyle(fontSize: 17.0,color: Colors.black),),
                              Text('Địa Chỉ: TP Hồ Chí Minh',style: TextStyle(fontSize: 17.0,color: Colors.black),),
                            ],
                          )
                        )
                      ],
                    ),
                  ),
                ),
              ),

              //Sử lý phần thống kê
              const Padding(
                padding: EdgeInsets.all(5.0),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Icon(Icons.bedtime_off_rounded)
                      ],
                    ),
                    Column(
              
                    ),
                    Column(
              
                    ),
                  ],
                ),
              )

            ],
          ),

        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}