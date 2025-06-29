import 'package:flutter/material.dart';
import 'package:travelappg12/models/destination_model.dart';

class Card2Widget extends StatelessWidget {
  DestinationModel _destinationModel;

  Card2Widget(this._destinationModel, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: Color(0xffDCFEF9),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomLeft: Radius.circular(20),
            ),
            child: Image.network(
              _destinationModel.urlImage,
              width: MediaQuery.of(context).size.width / 4,
              height: 110,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                _destinationModel.nombre,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
              Text(_destinationModel.description),
              Text(
                "\$${_destinationModel.price}",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(right: 8),
            decoration: BoxDecoration(
              color: Colors.cyan,
              borderRadius: BorderRadius.circular(8),
            ),
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 6),
            child: Column(
              children: [
                Text(
                  _destinationModel.stars.toString(),
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                Icon(Icons.star, color: Colors.white),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
