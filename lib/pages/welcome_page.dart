import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class WelcomePage extends StatelessWidget {
  List<String> imagesList = [
    "https://images.pexels.com/photos/460376/pexels-photo-460376.jpeg?_gl=1*4o1ujr*_ga*ODI4MzUxMDczLjE3MjI2NDc0MzI.*_ga_8JE65Q40S6*czE3NTExMjY4NjEkbzQ5JGcxJHQxNzUxMTI2ODY5JGo1MiRsMCRoMA..",
    "https://images.pexels.com/photos/5709839/pexels-photo-5709839.jpeg?_gl=1*1dnvqxg*_ga*ODI4MzUxMDczLjE3MjI2NDc0MzI.*_ga_8JE65Q40S6*czE3NTExMjk5MjgkbzUwJGcwJHQxNzUxMTI5OTI4JGo2MCRsMCRoMA..",
    "https://images.pexels.com/photos/924216/pexels-photo-924216.jpeg?_gl=1*17qkff5*_ga*ODI4MzUxMDczLjE3MjI2NDc0MzI.*_ga_8JE65Q40S6*czE3NTExMjk5MjgkbzUwJGcxJHQxNzUxMTI5OTMxJGo1NyRsMCRoMA..",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              CarouselSlider(
                options: CarouselOptions(
                  height: 200,
                  autoPlay: true,
                  enlargeCenterPage: true,
                  autoPlayCurve: Curves.linear,
                  enableInfiniteScroll: true,
                ),

                items:
                    imagesList
                        .map(
                          (e) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.network(
                                e,
                                fit: BoxFit.cover,
                                width: double.infinity,
                              ),
                            ),
                          ),
                        )
                        .toList(),
              ),
              // GFCarousel(
              //   height: 200,
              //   enlargeMainPage: true,
              //   enableInfiniteScroll: true,
              //   initialPage: 0,
              //   hasPagination: true,
              //   autoPlayAnimationDuration: Duration(seconds: 4),
              //   items:
              //       imagesList
              //           .map(
              //             (e) => Padding(
              //               padding: const EdgeInsets.all(8.0),
              //               child: ClipRRect(
              //                 borderRadius: BorderRadius.circular(15),
              //                 child: Image.network(
              //                   e,
              //                   fit: BoxFit.cover,
              //                   width: double.infinity,
              //                 ),
              //               ),
              //             ),
              //           )
              //           .toList(),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
