import 'package:flutter/material.dart';
import 'package:tawwon/screens/homePage.dart';
import 'package:tawwon/screens/orgnaization_view.dart';
import 'package:tawwon/widgets/request_card.dart';

class RequestsView extends StatelessWidget {
  const RequestsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFDAE5EA),
      appBar: AppBar(
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
        elevation: 0,
        title: const Text(
          'الطلبات',
          style: TextStyle(fontSize: 28, fontFamily: 'ReadexPro'),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(children: const <Widget>[
              Expanded(
                  child: Divider(
                color: Colors.black,
                thickness: 2,
                indent: 10,
                endIndent: 5,
              )),
              Text("الطلبات"),
              Expanded(
                  child: Divider(
                color: Colors.black,
                thickness: 2,
                indent: 5,
                endIndent: 10,
              )),
            ]),
          ),
          const RequestCard(),
          const Divider(
            color: Colors.black,
            thickness: 1,
            indent: 10,
            endIndent: 10,
          ),
          const RequestCard()
        ],
      ),
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
              IconButton(
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomePage()));
                  },
                  icon: const Icon(
                    Icons.home,
                    color: Colors.white,
                    size: 35,
                  )),
              const Icon(
                Icons.message,
                color: Colors.white,
                size: 35,
              ),
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
