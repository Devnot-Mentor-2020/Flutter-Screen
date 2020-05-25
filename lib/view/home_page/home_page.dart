import 'package:flutter/material.dart';
import 'package:medium_ui/core/components/appBar/navigation_bar/buttom_navigation_bar.dart';
import 'package:medium_ui/core/components/appBar/navigation_bar/music_player_navigaion_bar.dart';
import 'package:medium_ui/core/components/appBar/siver_app_bar/sliver_app_bar.dart';
import 'package:medium_ui/core/components/listView/list_view.dart';

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState()=>_HomePageState();
}
//Home Page
class _HomePageState extends State <HomePage>{
  @override
  Widget build (BuildContext context){
    return Scaffold( 
      bottomNavigationBar: CreateButtomNavigationBar(),
      body: Scaffold(        
        bottomNavigationBar:MusicPlayerNavigationBar(), 
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              CreateAppBar(),            
            ];
          },
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20,top: 8),
                child: Row(                   
                  children: [
                    Text("For you",
                    style:TextStyle(
                      fontSize: MediaQuery.of(context).size.height*0.04,                                      
                    ),),
                  ],
                ),
              ),
            Container(
            padding: EdgeInsets.only(left: 10),
            height: MediaQuery.of(context).size.height*0.35,
            child: CreateListView(),
              ),
            ],
          )
        )
        ),
    );
  }
}