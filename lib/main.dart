import 'package:flutter/material.dart';

import 'package:travelappg12/utils/gorouterUtil.dart';

void main() {
  runApp(
    MaterialApp(
      home: MaterialApp.router(routerConfig: goRouter),
      debugShowCheckedModeBanner: false,
    ),
    //  DestinationPage(), debugShowCheckedModeBanner: false),
  );
}
