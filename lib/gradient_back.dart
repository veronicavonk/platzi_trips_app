import 'package:flutter/material.dart';


class GradientBack extends StatelessWidget{
  String title = "Trips";

  GradientBack(this.title);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 250.0,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF4268d3), // va del mas claro
              Color(0xFF584cd1), // al mas oscuro
            ],
            begin: FractionalOffset(0.2, 0.0),
            end: FractionalOffset(1.0,0.6),
            stops: [0.0,0.6],
            tileMode: TileMode.clamp,
          )
        ),
      child: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 30.0,
          fontWeight: FontWeight.w900,
          fontFamily: "Lato"
        ),
      ),
      alignment: Alignment(-0.9,-0.6),
    );
  }

}