import 'package:flutter/material.dart';

class Card2Widget extends StatelessWidget {
  const Card2Widget({super.key});

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
              "https://images.pexels.com/photos/460376/pexels-photo-460376.jpeg?_gl=1*4o1ujr*_ga*ODI4MzUxMDczLjE3MjI2NDc0MzI.*_ga_8JE65Q40S6*czE3NTExMjY4NjEkbzQ5JGcxJHQxNzUxMTI2ODY5JGo1MiRsMCRoMA..",
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
                "Thailand",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
              Text("10 nigths for two/ all inclusive"),
              Text(
                "\$245.50",
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
                  "4.0",
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
