import 'package:flutter/material.dart';
import 'package:getwidget/components/carousel/gf_carousel.dart';
import 'package:travelappg12/widgets/welcome_widget.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GFCarousel(
          height: MediaQuery.of(context).size.height,
          hasPagination: true,
          enableInfiniteScroll: false,
          enlargeMainPage: true,
          items: [
            WelcomeWidget(
              title: "Viaja",
              description:
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dumm",
              asset: "avion",
              color: Colors.orange,
            ),
            WelcomeWidget(
              title: "Imprime tus tickets",
              description:
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dumm",
              asset: "print",
              color: Colors.red,
            ),
            WelcomeWidget(
              title: "Agenda tus viajes",
              description:
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dumm",
              asset: "agregar",
              color: Colors.cyan,
              showButton: true,
            ),
          ],
        ),
      ),
    );
  }
}
