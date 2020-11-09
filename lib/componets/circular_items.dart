import 'package:flutter/material.dart';

class CircularItems extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: <Widget>[
            Container(
              height: 110.0,
              width: 110.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(110.0),
                border: Border.all(
                  color: Colors.yellow,
                  width: 2.0
                )
              ),
              child: ClipOval(
                child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTkWe8xX6RQrX7lHesWIC1aOstPBlG_NKt6_w&usqp=CAU',
                fit: BoxFit.cover,
                )
              ),
            ),
            Container(
              height: 50.0,
              child: Image.network('https://vignette.wikia.nocookie.net/disneyypixar/images/f/fb/Avengers_Endgame_Logo.png/revision/latest/scale-to-width-down/340?cb=20190213180828&path-prefix=es')),
          ]
        ),
        SizedBox(width: 10.0,)
      ],
    );
  }
}