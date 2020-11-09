import 'package:flutter/material.dart';

class ItemsImage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRv02o9TOFa3IGrIgtr5CoggHQjOss7ADRCLw&usqp=CAU', 
        fit: BoxFit.cover,),
        SizedBox(width: 10.0,)
      ],
    );
  }
}