import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medium_ui/ui/shared/text_styles.dart';


class MusicPlayerNavigationBar extends StatefulWidget{
  @override
  _MusicPlayerNavigationBar createState()=>_MusicPlayerNavigationBar();
  }
  
  class _MusicPlayerNavigationBar extends State<MusicPlayerNavigationBar> {
    @override
    Widget build (BuildContext context){
      return  SizedBox(
        height: MediaQuery.of(context).size.height*0.07,
        child: BottomAppBar(
            shape: CircularNotchedRectangle(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  ImageItem(),
                  TextItem(),
                  IconButton(icon: FaIcon(FontAwesomeIcons.chevronUp ,size: MediaQuery.of(context).size.height*0.03,), onPressed: (){})
                ],
              ),
            ),
      );
    }
  }

class TextItem extends StatelessWidget {
  const TextItem({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Text("Tunes for The Anxious",style:Theme.of(context).textTheme.headline2),
      Text("David Mason - The ways to live", style:Theme.of(context).textTheme.headline3)
    ],
   );
  }
}

class ImageItem extends StatelessWidget {
  const ImageItem({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*0.12,
      height: MediaQuery.of(context).size.width*0.12,
      child: 
        Center(
          child: Icon(
          Icons.pause, color: Colors.white,
          )
        ), 
        decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.purple,
        border: Border.all(width: 2,color: Colors.blueAccent.shade200,style: BorderStyle.solid),
        image: DecorationImage(image: AssetImage("assets/images/bg.png"))
      ),
    );
  }
}