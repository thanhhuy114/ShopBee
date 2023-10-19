import 'package:flutter/material.dart';
import 'package:testa/main.dart';

class Content extends StatelessWidget {
  final String tieuDe;
  final String tomTat;

  const Content({Key? key, required this.tieuDe, required this.tomTat}) : super(key: key);

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
                  children: [
                    // Tiêu đề
                    Text(
                      // ignore: unnecessary_string_interpolations
                      '$tieuDe',
                      style: const TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 101, 101, 110),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Flexible(
                      child: Text(
                        // ignore: unnecessary_string_interpolations
                        '$tomTat',
                        style: const TextStyle(
                          fontSize: 16.0,
                          color: Color.fromARGB(255, 101, 101, 110),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}