import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Color.fromARGB(255, 218, 229, 234),
          appBar: AppBar(
            title: Text(
              'مرحبا بك',
              style: TextStyle(fontSize: 28, fontFamily: 'ReadexPro'),
            ),
            backgroundColor: Color.fromARGB(255, 33, 55, 83),
            centerTitle: true,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.menu_outlined),
                onPressed: () {},
              ),
            ],
          ),
          body: Column(children: [
            SizedBox(height: 100),
            Padding(
              padding: const EdgeInsets.fromLTRB(270, 0, 20, 30),
              child: Text('ابدأ من هنا',
                  style: TextStyle(fontSize: 24, fontFamily: 'ReadexPro')),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Color(0xFF0484D9),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(
                      Icons.home,
                      color: Colors.white,
                      size: 50,
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Color(0xFF039C8A),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(Icons.favorite, color: Colors.white),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Color(0xFFE14D4D),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(
                      Icons.newspaper,
                      color: Colors.white,
                      size: 50,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 20, 270, 30),
              child: ElevatedButton(
                onPressed: () {},
                child: Text('< < المزيد'),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromARGB(255, 33, 55, 83)),
                ),
              ),
            )
          ])),
    );
  }
}
