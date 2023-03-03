import 'package:flutter/material.dart';

import 'views/views.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    initialRoute: HomeView.routeName,
    routes:  {
     HomeView.routeName: (context) =>  const HomeView(),
     SettingsView.routeName: (context) =>  const SettingsView(),

    },
    );
  }
}