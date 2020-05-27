import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medium_ui/ui/shared/text_styles.dart';
import 'package:medium_ui/ui/shared/ui_helpers.dart';

class CreateAppBar extends StatefulWidget{
  @override
  _AppBar createState()=>_AppBar();
  }
  
  class _AppBar extends State<CreateAppBar>{
    @override
  Widget build (BuildContext context){
    return SliverAppBar(                
                expandedHeight: MediaQuery.of(context).size.height*0.4,
                floating: true,
                pinned: false,                
                flexibleSpace: FlexibleSpaceBar(background: Stack(children: [                        
                    Wrap(children: [Image(image:AssetImage("assets/images/artwork_masq.png",),fit: BoxFit.fill),],),
                    SliverAppBarItem()
                    ],)
                    ),
              );
      }
    }

class SliverAppBarItem extends StatelessWidget {
  const SliverAppBarItem({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: doublePaddingLeft, bottom: paddingButtom),
      child: Column(  
        mainAxisAlignment: MainAxisAlignment.end,              
        children: [
         Column(
              crossAxisAlignment: CrossAxisAlignment.start,         
              children: [
                Container(
                  width: MediaQuery.of(context).size.width*0.25,
                  height: MediaQuery.of(context).size.height*0.04,
                  child: Center(
                    child: Text("Featured",style: sliverAppBarContainerTextStyle),
                  ),
                  decoration: BoxDecoration(                                  
                   color: Colors.transparent,
                    borderRadius:BorderRadius.circular(20),
                    border: Border.all(color: Colors.white)
                  ),
                ),
                Text("Funk Gets",style: sliverAppBarTextStyle),
                Text("A Groove",style: sliverAppBarTextStyle),
                
                Row(children: [Text("Feel the Bass",style: sliverAppBarSmallTextStyle),
                SizedBox(width: MediaQuery.of(context).size.width*0.07,),
                Text("1 hour",style: sliverAppBarSmallTextStyle),
                ],
                )
              ],
            ),
        ],
      ),
    );
  }
}
