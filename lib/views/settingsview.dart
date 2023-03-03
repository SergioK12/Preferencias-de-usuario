import 'package:flutter/material.dart';
import 'package:preferencias_de_usuario/widgets/widgets.dart';

class SettingsView extends StatelessWidget {
  static const String routeName = 'Settings';
  const SettingsView({Key? key}) : super(key: key);
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
            children:  [
              const Text("Ajustes", style: TextStyle(
                fontSize: 45, fontWeight: FontWeight.bold
              ),
              
              
              ), const Divider(),
              SwitchListTile.adaptive(
                value: true,
                title: const Text("Modo odcuro"),
                onChanged: (value){

                }

              ),
              const Divider(),
              RadioListTile<int>(
                value: 1,
                groupValue: 1,
                title: const  Text("Masculino"),
                onChanged: (value){
                }
              ),
               const Divider(),
              RadioListTile<int>(
                value: 2,
                groupValue: 1,
                title: const  Text("Femenino"),
                onChanged: (value){
                }
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  initialValue: 'Sergio',
                  decoration: const InputDecoration(
                    labelText: 'Nombre',
                    helperText: 'Nombre del usuario' 
                  ),
                  
                ),
              )
            ],
          ),
        ),
      )

      
    );
  }
}
