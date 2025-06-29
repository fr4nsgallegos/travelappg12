import 'package:flutter/material.dart';
import 'package:travelappg12/models/destination_model.dart';

class DestinationPage extends StatelessWidget {
  DestinationModel destinationModel;
  DestinationPage(this.destinationModel, {super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: screenHeight / 3,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(destinationModel.urlImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: [
              SizedBox(height: screenHeight / 3.6),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
