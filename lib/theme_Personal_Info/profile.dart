import 'package:flutter/material.dart';
import 'package:testa/main.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
          border: Border.all(color: colorTheme, width: 2.5),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              ClipOval(
                child: Image.asset(
                  "assets/img/avatar.png",
                  width: 110.0,
                  height: 110.0,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Tên: Lê Văn C',
                        style: TextStyle(
                            fontSize: 19.0,
                            color: Color.fromARGB(255, 101, 101, 110)),
                      ),
                      Text(
                        'SĐT: 0333333333',
                        style: TextStyle(
                            fontSize: 16.0,
                            color: Color.fromARGB(255, 101, 101, 110)),
                      ),
                      Text(
                        'Email: abc@gmail.com',
                        style: TextStyle(
                            fontSize: 16.0,
                            color: Color.fromARGB(255, 101, 101, 110)),
                      ),
                      Text(
                        'Địa Chỉ: TP Hồ Chí Minh',
                        style: TextStyle(
                            fontSize: 16.0,
                            color: Color.fromARGB(255, 101, 101, 110)),
                      ),
                      Text(
                        'Ngày Sinh: 01/01/2003',
                        style: TextStyle(
                            fontSize: 16.0,
                            color: Color.fromARGB(255, 101, 101, 110)),
                      ),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
