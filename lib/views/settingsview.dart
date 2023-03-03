import 'package:flutter/material.dart';
import 'package:preferencias_de_usuario/widgets/widgets.dart';

class SettingsView extends StatefulWidget {
  static const String routeName = 'Settings';
  const SettingsView({Key? key}) : super(key: key);

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  bool isDarkMode = false;
  int gender = 1;
  String name = 'Sergio';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('SettingsView'),
        ),
        drawer: const SideMenu(),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Text(
                  "Ajustes",
                  style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
                ),
                const Divider(),
                SwitchListTile.adaptive(
                    value: isDarkMode,
                    title: const Text("Modo odcuro"),
                    
                    onChanged: (value) {
                     isDarkMode =  value;
                      setState(() {
                        
                      });
                    }),
                const Divider(),
                RadioListTile<int>(
                    value: 1,
                    groupValue: gender,
                    title: const Text("Masculino"),
                    onChanged: (value) {
                      gender = value ?? 1;
                      setState(() {
                        
                      });
                    }),
                const Divider(),

                RadioListTile<int>(
                    value: 2,
                    groupValue: gender,
                    title: const Text("Femenino"),
                    onChanged: (value) {
                      gender = value ?? 2;
                      setState(() {
                        
                      });
                    }),
                const Divider(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    initialValue: 'Sergio',
                    decoration: const InputDecoration(
                        labelText: 'Nombre', helperText: 'Nombre del usuario'),
                        onChanged: (value) {
                          name = value;
                          setState(() {
                            
                          });
                        }),
                  ),
              ],
            ),
          ),
        ));
  }
}
