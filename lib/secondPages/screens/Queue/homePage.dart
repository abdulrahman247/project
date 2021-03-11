import 'package:GRSON/secondPages/widgets/card-horizontal.dart';
import 'package:flutter/material.dart';

import '../home.dart';

class HomeQueuePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 14.0, right: 14.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            //item 1
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: CardHorizontal(
                  cta: "View restaurant",
                  title: homeCards["Ice Cream"]['title'],
                  img: homeCards["Ice Cream"]['image'],
                  tap: () {
                    Navigator.pushNamed(context, '/homepage');
                  }),
            ),
            // end of item one
            //item 2
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: CardHorizontal(
                  cta: "View restaurant",
                  title: homeCards["Ice Cream"]['title'],
                  img: homeCards["Ice Cream"]['image'],
                  tap: () {
                    Navigator.pushNamed(context, '/homepage');
                  }),
            ),
            //item 3
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: CardHorizontal(
                  cta: "View restaurante",
                  title: homeCards["Fashion"]['title'],
                  img: homeCards["Fashion"]['image'],
                  tap: () {}),
            ),
            //item 4
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: CardHorizontal(
                  cta: "View restaurant",
                  title: homeCards["Ice Cream"]['title'],
                  img: homeCards["Ice Cream"]['image'],
                  tap: () {
                    Navigator.pushNamed(context, '/homepage');
                  }),
            ),
            //item 5
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: CardHorizontal(
                  cta: "View restaurant",
                  title: homeCards["Ice Cream"]['title'],
                  img: homeCards["Ice Cream"]['image'],
                  tap: () {
                    Navigator.pushNamed(context, '/homepage');
                  }),
            )
          ],
        ),
      ),
    );
  }
}
