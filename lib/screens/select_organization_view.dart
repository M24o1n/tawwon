import 'package:flutter/material.dart';
import 'package:tawwon/screens/order_details1.dart';

class SelectOrganizationView extends StatelessWidget {
  const SelectOrganizationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 218, 229, 234),
      appBar: AppBar(
        title: const Text('Select Organization'),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const OrderDetails1()));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.22,
                  decoration: BoxDecoration(
                    color: const Color(0xFF213753),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.3,
                        height: MediaQuery.of(context).size.height * 0.175,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: const Image(image: AssetImage('assets/images/Nestle.jpg')),
                      ),
                      const VerticalDivider(
                        indent: 5,
                        endIndent: 5,
                        thickness: 2,
                        color: Colors.black,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text(
                            'شركة نيستلا',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontFamily: 'ReadexPro',
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.5,
                            height: 25,
                            decoration: const BoxDecoration(
                              color: Color(0xFF1B2430),
                              borderRadius: BorderRadius.all(
                                Radius.circular(5),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(
                                  Icons.watch_later,
                                  color: Colors.white,
                                  size: 15,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 5),
                                  child: Text('7:40 AM - 4:00 PM',
                                      style: TextStyle(
                                        fontSize: 11,
                                        color: Colors.white,
                                        fontFamily: 'ReadexPro',
                                      )),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.5,
                            height: 45,
                            decoration: const BoxDecoration(
                              color: Color(0xFF1B2430),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                    width: 45,
                                    height: 45,
                                    decoration: const BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10),
                                      ),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        'بلاستيك',
                                        style: TextStyle(
                                          fontSize: 11,
                                          color: Colors.white,
                                          fontFamily: 'ReadexPro',
                                        ),
                                      ),
                                    ))
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
