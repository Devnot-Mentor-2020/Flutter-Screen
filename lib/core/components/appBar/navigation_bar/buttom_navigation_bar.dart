import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CreateButtomNavigationBar extends StatelessWidget{
  final double height;
  final double iconSize;
  final double elevation;
  final FaIcon icon1;
  final FaIcon icon2;
  final FaIcon icon3;

  const CreateButtomNavigationBar({Key key, this.height, this.iconSize, this.elevation, this.icon1, this.icon2, this.icon3}) : super(key: key);
    @override
    Widget build (BuildContext context){
      return  SizedBox(
        height: height,
        child: BottomNavigationBar(          
          iconSize: iconSize,
          elevation: elevation,
          items: [            
            BottomNavigationBarItem(
              icon: icon1,
              title: Text(""),             
            ),
            BottomNavigationBarItem(
              icon: icon2,
              title: Text(""),
            ),
            BottomNavigationBarItem(
              icon: icon3,
              title: Text(""),
            ),
          ] 
        ),
      );
    }
  }