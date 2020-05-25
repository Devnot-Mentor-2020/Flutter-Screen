import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CreateButtomNavigationBar extends StatefulWidget{
  @override
  _CreateButtomNavigationBar createState()=>_CreateButtomNavigationBar();
  }
  
  class _CreateButtomNavigationBar extends State<CreateButtomNavigationBar> {
    @override
    Widget build (BuildContext context){
      return  SizedBox(
        height: MediaQuery.of(context).size.height*0.074,
        child: BottomNavigationBar(          
          iconSize: MediaQuery.of(context).size.height*0.025,
          elevation: 0,
          items: [            
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.search, color: Colors.black,),
              title: new Text('')
            ),
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.heart, color: Colors.black,),
              title: new Text('')
            ),
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.gripLines, color: Colors.black,),
              title: new Text('')
            ),
          ] 
        ),
      );
    }
  }