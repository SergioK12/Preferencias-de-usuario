import 'package:flutter/material.dart';
import 'package:preferencias_de_usuario/providers/provider.dart';
import 'package:preferencias_de_usuario/shared_preferences/shared_pref.dart';
import 'package:provider/provider.dart';

import 'views/views.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Preferencias.init();

  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) => ThemeProvider(isDarkMode: Preferencias.getIsDarkMode),)
    ],child: const MyApp(),)
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeView.routeName,
      routes: {
        HomeView.routeName: (context) => const HomeView(),
        SettingsView.routeName: (context) => const SettingsView(),
      },
      theme: Provider.of<ThemeProvider>(context).temaactual,
    );
  }
}
