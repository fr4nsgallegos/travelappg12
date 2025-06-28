import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int contador = 0;

  void guardarContador() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt("contador", contador);
  }

  void leerContador() async {
    final prefs = await SharedPreferences.getInstance();
    int? contadorAux = prefs.getInt("contador");
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
