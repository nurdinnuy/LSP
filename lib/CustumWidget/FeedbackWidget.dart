import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

// ignore: must_be_immutable
class Feedbackflutter extends StatelessWidget {
   var rating = 3.0;
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Rating bar demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
            child: SmoothStarRating(
          rating: rating,
          isReadOnly: false,
          size: 50,
          filledIconData: Icons.star,
          halfFilledIconData: Icons.star_half,
          defaultIconData: Icons.star_border,
          starCount: 5,
          allowHalfRating: true,
          spacing: 2.0,
          onRated: (value) {
            print("rating value -> $value");
            // print("rating value dd -> ${value.truncate()}");
          },
        )),
      ),
    );
  }
}