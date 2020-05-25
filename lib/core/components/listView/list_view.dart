import 'package:flutter/material.dart';
import 'package:medium_ui/core/components/listView/list_view_item.dart';

class CreateListView extends StatefulWidget{
  @override
  _ListView createState()=>_ListView();
  }
  
  class _ListView extends State<CreateListView>{
    @override
  Widget build (BuildContext context){
    

    return ListView(
            scrollDirection: Axis.horizontal,         
            children: <Widget>[
              ListViewItem(
                image:DecorationImage(image: AssetImage("assets/images/list_item_images/listItem1.png") ),
                text: "Feeling Artsy",
                minute: "2 hours",
              ),
              ListViewItem(
                image:DecorationImage(image: AssetImage("assets/images/list_item_images/listItem2.png") ),
                text: "Feel like Dancing",
                minute: "35 min",
              ),
              ListViewItem(
                image:DecorationImage(image: AssetImage("assets/images/list_item_images/listItem3.png") ),
                text: "Somewhere Dark",
                minute: "3 hours",
              ),
            ],
          );
      }
    }