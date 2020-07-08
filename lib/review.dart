import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Review extends StatelessWidget{
  String pathImage ="assets/images/paisage5.jpg";
  String nameReview = "Varusa sas";
  String detailsReview = "1 review 5 photos.";
  String comment = "There is an amazing place in Sri Lanka.";

  Review(this.pathImage, this.nameReview, this.detailsReview, this.comment);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final photo = Container(
      margin: EdgeInsets.only(
        top:20.0,
        left: 20.0,
      ),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage)
        ),
      ),
    );

    final userName = Container(
      margin: EdgeInsets.only(
        left: 20.0,
      ),
      child: Text(
        nameReview,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 7.0,
          fontFamily: "Lato"
        ),
      ),
    );

    final star = Container(
        margin: EdgeInsets.only(
            top:323.0,
            right: 3.0
        ),
        child: Icon(
          Icons.star,
          color: Color(0xFFf2C611),
        )
    );

    final userInfo = Container(
      margin: EdgeInsets.only(
        left: 20.0,
      ),
      child: Text(
        detailsReview,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontSize: 13.0,
            fontFamily: "Lato",
          color: Color(0xFFa3a5a7)
        ),
      ),
    );

    final reviewRow = Row(
      children: <Widget>[
        userInfo,
        star
      ],
    );
    final userComments = Container(
      margin: EdgeInsets.only(
        left: 20.0,
      ),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontSize: 13.0,
            fontFamily: "Lato",
            fontWeight: FontWeight.w900,
        ),
      ),
    );

    final reviewText = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        userName,
        userInfo,
        userComments
      ],
    );
    return Row(
      children: <Widget>[
        photo,
        reviewText
      ],
    );
  }

}