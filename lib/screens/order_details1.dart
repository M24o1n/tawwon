import 'package:flutter/material.dart';
import 'package:tawwon/models/organization.dart';
import 'package:tawwon/models/request.dart';
import 'package:tawwon/screens/order_details2.dart';

class OrderDetails1 extends StatefulWidget {
  const OrderDetails1({super.key, required this.request});
  final Request request;

  @override
  State<OrderDetails1> createState() => _OrderDetails1State();
}

class _OrderDetails1State extends State<OrderDetails1> {
  TimeOfDay? time = TimeOfDay.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 218, 229, 234),
        appBar: AppBar(
          title: const Text('تفاصيل الطلب'),
          centerTitle: true,
          // elevation: 0,
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'بلاستيك',
                        style: TextStyle(
                          fontSize: 36,
                          fontFamily: 'ReadexPro',
                        ),
                      ),
                      Icon(Icons.plumbing_sharp)
                    ],
                  ),
                ),
                const Directionality(
                  textDirection: TextDirection.rtl,
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        ),
                        labelText: 'ادخل حجم التبرع (مثال 5 جحم)',
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFFE1E2E6),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          const Text('الساعات المتاحة للاستلام'),
                          Padding(
                            padding: const EdgeInsets.all(28.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text('${time?.hour}:${time?.minute}'),
                                const Icon(Icons.access_time_filled_rounded),
                              ],
                            ),
                          ),
                          ElevatedButton(
                              onPressed: () async {
                                var result = await showTimePicker(context: context, initialTime: TimeOfDay.now());
                                if (result != null) {
                                  time = result;
                                  setState(() {});
                                }
                              },
                              child: const Text('اختر الوقت')),
                        ],
                      )),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const OrderDetails2()));
                  },
                  child: const Text('موافق'),
                ),
              ],
            ),
          ),
        ));
  }
}
