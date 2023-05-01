import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tawwon/models/local_user.dart';
import 'package:tawwon/screens/login_view.dart';
import 'package:tawwon/screens/orgnaization_view.dart';
import 'package:tawwon/screens/requests_view.dart';
import 'package:tawwon/screens/select_organization_view.dart';

import '../cloud_functions/Auth.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<LocalUser?>(context);
    final auth = Auth();
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 218, 229, 234),
      appBar: AppBar(
        title: const Text(
          'مرحبا بك',
          style: TextStyle(fontSize: 28, fontFamily: 'ReadexPro'),
        ),
        backgroundColor: const Color.fromARGB(255, 33, 55, 83),
        centerTitle: true,
        // leading: IconButton(
        //   icon: const Icon(Icons.arrow_back_ios),5
        //   onPressed: () {
        //     Navigator.pop(context);
        //   },
        // ),
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              if (user?.uid != null) {
                print(user?.uid);
              } else {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginView()));
              }
            },
          ),
        ],
      ),
      body: Column(children: [
        const SizedBox(height: 100),
        const Padding(
          padding: EdgeInsets.fromLTRB(270, 0, 20, 30),
          child: Text('ابدأ من هنا', style: TextStyle(fontSize: 24, fontFamily: 'ReadexPro')),
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
                  color: const Color(0xFF0484D9),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SelectOrganizationView(
                                  type: 'plastic',
                                )));
                  },
                  icon: const Icon(
                    Icons.local_drink,
                    color: Colors.white,
                    size: 50,
                  ),
                ),
              ),
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: const Color(0xFF039C8A),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(Icons.favorite, color: Colors.white),
              ),
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: const Color(0xFFE14D4D),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(
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
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const OrganizationPage()));
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 33, 55, 83)),
            ),
            child: const Text('< < المزيد'),
          ),
        )
      ]),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.1,
          decoration: const BoxDecoration(
            color: Color(0xFF1B2430),
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Icon(
                Icons.home,
                color: Colors.white,
                size: 35,
              ),
              IconButton(
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const RequestsView()));
                  },
                  icon: const Icon(
                    Icons.message,
                    color: Colors.white,
                    size: 35,
                  )),
              const Icon(
                Icons.search,
                color: Colors.white,
                size: 35,
              ),
              IconButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context, MaterialPageRoute(builder: (context) => const OrganizationPage()));
                  },
                  icon: const Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 35,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
