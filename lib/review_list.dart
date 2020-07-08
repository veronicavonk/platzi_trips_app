import 'package:flutter/material.dart';
import 'package:platzi_trips_app/review.dart';

class ReviewList extends StatelessWidget{
  String pathImage = "assets/images/paisaje5.jpg";
  String nameReview = "nameReview";
  String detailsReview = "detailReview";
  String comment = " comentariosssss";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review(pathImage, nameReview, detailsReview, comment),
        Review(pathImage, nameReview, detailsReview, comment),
        Review(pathImage, nameReview, detailsReview, comment),
        Review(pathImage, nameReview, detailsReview, comment),
        Review(pathImage, nameReview, detailsReview, comment),
      ],
    );
  }

}