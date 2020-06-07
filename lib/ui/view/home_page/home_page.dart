import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medium_ui/core/components/appBar/navigation_bar/buttom_navigation_bar.dart';
import 'package:medium_ui/core/components/appBar/navigation_bar/music_player_navigaion_bar.dart';
import 'package:medium_ui/core/components/appBar/siver_app_bar/sliver_app_bar.dart';
import 'package:medium_ui/core/components/listView/list_view.dart';
import 'package:medium_ui/ui/shared/ui_helpers.dart';


class HomePage extends StatefulWidget{
  
  @override
  _HomePageState createState()=>_HomePageState();
}
//Home Page
class _HomePageState extends State <HomePage>{
  @override
  Widget build (BuildContext context){
    return Scaffold( 
      
      bottomNavigationBar: CreateButtomNavigationBar(
        iconSize: MediaQuery.of(context).size.height*0.025,
        height: MediaQuery.of(context).size.height*0.074,
        icon1: FaIcon(FontAwesomeIcons.search, color: Colors.black,),
        icon2: FaIcon(FontAwesomeIcons.heart, color: Colors.black,),
        icon3:FaIcon(FontAwesomeIcons.gripLines, color: Colors.black,),
      ),
      body: Scaffold(        
        bottomNavigationBar:MusicPlayerNavigationBar(), 
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[ CreateAppBar(
              pinned: false,
              floating: true,
              expandedHeight:  MediaQuery.of(context).size.height*0.4,
            ),
            ];
          },
          body: BodyTextWidget() )
        ),
    );
  }
}

class BodyTextWidget extends StatelessWidget {
  const BodyTextWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: UiHelper.doublePaddingLeft ,top: UiHelper.paddingTop),
          child: Row( children: [ 
            Text("For you", style:Theme.of(context).textTheme.subtitle1)],
          ),
        ),
      ListViewWidget(),
      ],
    );
  }
}

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
    
    padding: EdgeInsets.only(left: UiHelper.paddingLeft),
    height: MediaQuery.of(context).size.height*0.35,
    child: CreateListView(),
      );
  }
}