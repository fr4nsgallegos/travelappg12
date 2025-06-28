import 'package:flutter/material.dart';

class DestinationCardWidget extends StatelessWidget {
  const DestinationCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16),
      padding: EdgeInsets.all(12),
      width: 170,
      height: 220,
      decoration: BoxDecoration(
        // color: Colors.red,
        borderRadius: BorderRadius.circular(25),
        image: DecorationImage(
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.4),
            BlendMode.srcATop,
          ),
          image: NetworkImage(
            "https://images.pexels.com/photos/3538245/pexels-photo-3538245.jpeg?_gl=1*4o7u52*_ga*ODI4MzUxMDczLjE3MjI2NDc0MzI.*_ga_8JE65Q40S6*czE3NTExMjMxMjgkbzQ4JGcxJHQxNzUxMTIzMTU4JGozMCRsMCRoMA..",
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.45),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  "NEW",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    right: 40,
                    child: CircleAvatar(
                      radius: 16,
                      backgroundImage: NetworkImage(
                        "https://images.pexels.com/photos/733872/pexels-photo-733872.jpeg?_gl=1*137gt5t*_ga*ODI4MzUxMDczLjE3MjI2NDc0MzI.*_ga_8JE65Q40S6*czE3NTExMjMxMjgkbzQ4JGcxJHQxNzUxMTI0MzY1JGozMCRsMCRoMA..https://images.pexels.com/photos/733872/pexels-photo-733872.jpeg?_gl=1*137gt5t*_ga*ODI4MzUxMDczLjE3MjI2NDc0MzI.*_ga_8JE65Q40S6*czE3NTExMjMxMjgkbzQ4JGcxJHQxNzUxMTI0MzY1JGozMCRsMCRoMA..",
                      ),
                    ),
                  ),
                  Positioned(
                    right: 20,
                    child: CircleAvatar(
                      radius: 16,
                      backgroundImage: NetworkImage(
                        "https://images.pexels.com/photos/91227/pexels-photo-91227.jpeg?_gl=1*1dyux6x*_ga*ODI4MzUxMDczLjE3MjI2NDc0MzI.*_ga_8JE65Q40S6*czE3NTExMjMxMjgkbzQ4JGcxJHQxNzUxMTI0MzQ3JGo0OCRsMCRoMA..",
                      ),
                    ),
                  ),
                  Positioned(
                    child: CircleAvatar(
                      radius: 16,
                      backgroundImage: NetworkImage(
                        "https://images.pexels.com/photos/1239291/pexels-photo-1239291.jpeg?_gl=1*7d3hg1*_ga*ODI4MzUxMDczLjE3MjI2NDc0MzI.*_ga_8JE65Q40S6*czE3NTExMjMxMjgkbzQ4JGcxJHQxNzUxMTI0MzcxJGoyNCRsMCRoMA..",
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Thailand",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "18 tours",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 4),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.40),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [
                    Text(
                      "4.5",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    Icon(Icons.star, color: Colors.white),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
