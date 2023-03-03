import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  static const String routeName = 'Home';

  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home"),centerTitle: true,),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:const [
            Text("Home View")
          ],
        ),
      ),
    );
  }
}