import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medium_ui/ui/shared/ui_helpers.dart';

  class CreateAppBar extends StatelessWidget{
    final bool floating;
    final bool pinned;
    final double expandedHeight;

  const CreateAppBar({Key key, this.floating, this.pinned, this.expandedHeight}) : super(key: key);

    

      @override
    Widget build (BuildContext context){
      return SliverAppBar(                       
                expandedHeight: expandedHeight,
                floating: floating,
                pinned: pinned,                
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
        
        padding: EdgeInsets.only(left: UiHelper.doublePaddingLeft, bottom: UiHelper.paddingButtom),
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
                      child: Text("Featured",style: Theme.of(context).textTheme.headline4),
                    ),
                    decoration: BoxDecoration(                                  
                    color: Colors.transparent,
                      borderRadius:BorderRadius.circular(20),
                      border: Border.all(color: Colors.white)
                    ),
                  ),
                  Text("Funk Gets",style:Theme.of(context).textTheme.subtitle2),
                  Text("A Groove",style:Theme.of(context).textTheme.subtitle2),                
                  Row(children: [Text("Feel the Bass",style:Theme.of(context).textTheme.bodyText1),
                  SizedBox(width: MediaQuery.of(context).size.width*0.07,),
                  Text("1 hour",style: Theme.of(context).textTheme.bodyText1),
                  ],
                  )
                ],
              ),
          ],
        ),
      );
    }
  }
