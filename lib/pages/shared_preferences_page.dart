import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesPage extends StatefulWidget {
  const SharedPreferencesPage({super.key});

  @override
  State<SharedPreferencesPage> createState() => _SharedPreferencesPageState();
}

class _SharedPreferencesPageState extends State<SharedPreferencesPage> {
  int contador = 0;
  String user = "";

  void guardarContador() async {
    final prefs = await SharedPreferences.getInstance();
    // GUARDANDO EL CONTADOR
    await prefs.setInt("contador", contador);
    //GUARDANDO MÁS INFORMACIÓN
    prefs.setString("username", "JhonnyGal");
    prefs.setDouble("heigyh", 1.75);
    prefs.setBool("isLoggedIn", true);
    prefs.setStringList("favorites", ["Flutter", "Dart", "Developer"]);
  }

  void leerContador() async {
    final prefs = await SharedPreferences.getInstance();
    int? contadorAux = prefs.getInt("contador");
    user = prefs.getString("username") ?? "-";
    contador = contadorAux ?? 0;

    setState(() {});
    // if (contadorAux == null) {
    //   contador = 0;
    // } else {
    //   contador = contadorAux;
    // }
  }

  @override
  void initState() {
    leerContador();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(user, style: TextStyle(fontSize: 50)),
            Text(contador.toString(), style: TextStyle(fontSize: 50)),
            ElevatedButton(
              onPressed: () {
                contador++;
                guardarContador();

                setState(() {});
              },
              child: Text("añadir 1"),
            ),
          ],
        ),
      ),
    );
  }
}
