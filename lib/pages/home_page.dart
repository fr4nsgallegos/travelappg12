import 'package:flutter/material.dart';
import 'package:travelappg12/widgets/card2_widget.dart';
import 'package:travelappg12/widgets/destination_card_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                children: [
                  DestinationCardWidget(),
                  DestinationCardWidget(),
                  DestinationCardWidget(),
                ],
              ),
            ),
            SizedBox(height: 16),
            Card2Widget(),
            Card2Widget(),
            Card2Widget(),
          ],
        ),
      ),
    );
  }
}
