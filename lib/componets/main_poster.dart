import 'package:flutter/material.dart';

import 'navigation_bar.dart';

class MainPoster extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        this.header(),
        this.serieInfo(),
        this.buttons()
      ]
    );
  }

  Widget header() {
    return Stack(
      children: <Widget>[
        Image.asset(
          'assets/images/logo_elite.png',
          height: 350.0,
          fit: BoxFit.cover,
        ),
        Container(
          width: double.infinity,
          height: 350.0,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: <Color>[Colors.black38, Colors.black],
                  begin: Alignment.center,
                  end: Alignment.bottomCenter)),
        ),
        SafeArea(child: NavigationBar())
      ],
    );
  }

  Widget serieInfo(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Text('Telenovelesco', style: TextStyle(color: Colors.white, fontSize: 10.0),),
        Icon(Icons.fiber_manual_record, color: Colors.red, size: 7.0),
        Text('Suspenso Insostenible', style: TextStyle(color: Colors.white, fontSize: 10.0),),
        Icon(Icons.fiber_manual_record, color: Colors.red, size: 7.0),
        Text('De suspenso', style: TextStyle(color: Colors.white, fontSize: 10.0),),
        Icon(Icons.fiber_manual_record, color: Colors.red, size: 7.0),
        Text('Adolecentes', style: TextStyle(color: Colors.white, fontSize: 10.0),),
      ],
    );
  }

  Widget buttons(){
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Column(
            children: <Widget>[
              Icon(Icons.check, color: Colors.white),
              Text('Mi Lista', style: TextStyle(color: Colors.white, fontSize: 10.0),)
            ],
          ),
          FlatButton.icon(onPressed: (){}, 
          color: Colors.white,
            icon: Icon(Icons.play_arrow, color: Colors.black,), 
            label: Text('Reproducir', style: TextStyle(color: Colors.black),)
          ),
          Column(
            children: <Widget>[
              Icon(Icons.info_outline, color: Colors.white),
              Text('Información', style: TextStyle(color: Colors.white, fontSize: 10.0),)
            ],
          ),
        ]
      ),
    );
  }
}
