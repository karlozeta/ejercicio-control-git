import 'package:clone_netflix/componets/circular_items.dart';
import 'package:clone_netflix/componets/items_image.dart';
import 'package:clone_netflix/componets/main_poster.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: menuNavigation(),
      backgroundColor: Colors.black,
      body: ListView(
        children: <Widget>[
          MainPoster(),
          horizontalList('Avances', CircularItems(), 10),
          SizedBox(height: 10.0,),
          horizontalList('Programas sobre viajes', ItemsImage(), 10),
          SizedBox(height: 10.0,),
          horizontalList('Tendencias', ItemsImage(), 10),
          SizedBox(height: 10.0,),
          horizontalList('Mi Lista', ItemsImage(), 10),
          SizedBox(height: 20.0,),
        ],
      ),
    );
  }

  BottomNavigationBar menuNavigation(){
    return BottomNavigationBar(
      backgroundColor: Colors.black,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white54,
      type: BottomNavigationBarType.fixed,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Inicio')
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          title: Text('Buscar'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.library_music),
          title: Text('Proximamente'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.file_download),
          title: Text('Descargas'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.list),
          title: Text('Más'),
        ),
      ],
    );
  }

  Widget horizontalList(String title, Widget item, int count) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 6.0, vertical: 10.0),
          child: Text(
            title,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20.0),
          ),
        ),
        Container(
            height: 110.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index){
                return item;
              },
              itemCount: count,
            ),
          )
      ],
    );
  }
}
