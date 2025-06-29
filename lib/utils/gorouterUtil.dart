import 'package:go_router/go_router.dart';
import 'package:travelappg12/models/destination_model.dart';
import 'package:travelappg12/pages/destination_page.dart';
import 'package:travelappg12/pages/home_page.dart';
import 'package:travelappg12/pages/init_page.dart';

final GoRouter goRouter = GoRouter(
  routes: [
    GoRoute(path: "/", builder: (context, state) => InitPage()),

    GoRoute(path: '/home', builder: (context, state) => HomePage()),
    GoRoute(
      path: "/destino",
      builder: (context, state) {
        final destino = state.extra as DestinationModel;
        return DestinationPage(destino);
      },
    ),
  ],
);
