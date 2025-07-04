import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:travelappg12/models/destination_model.dart';
import 'package:travelappg12/widgets/card2_widget.dart';
import 'package:travelappg12/widgets/destination_card_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          // Eliminar un dato en específico
          SharedPreferences _prefs = await SharedPreferences.getInstance();
          // _prefs.remove("yaInicio");

          // Eliminar todos los datos
          _prefs.clear();
        },
      ),
      drawer: Drawer(),
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.rocket, color: Colors.cyan),
            SizedBox(width: 8),
            Text("DiscountTour", style: TextStyle(fontWeight: FontWeight.w700)),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Find the best tour",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.w400),
            ),
            Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the",
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                "Country",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children:
                    destinosList
                        .map((destino) => DestinationCardWidget(destino))
                        .toList(),
              ),
            ),
            SizedBox(height: 16),
            ...destinosList.map((destino) => Card2Widget(destino)),
          ],
        ),
      ),
    );
  }
}
