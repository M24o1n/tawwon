import 'package:flutter/material.dart';

import 'screens/client_register_view.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const ClientRegisterView(),
        theme: ThemeData(
          primaryColor: const Color(0xFF213753),
          scaffoldBackgroundColor: const Color(0xFF213753),
          visualDensity: VisualDensity.adaptivePlatformDensity,
          colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.white, primary: const Color(0xFF213753)),
        ));
  }
}
