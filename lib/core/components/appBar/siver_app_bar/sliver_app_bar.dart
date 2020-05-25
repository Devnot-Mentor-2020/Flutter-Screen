import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
                flexibleSpace: FlexibleSpaceBar(                    
                   background: Stack(
                      children: [                        
                        Wrap(
                          children: [
                             Image(image:AssetImage("assets/images/artwork_masq.png",),                       
                          fit: BoxFit.fill),
                          ],
                        ),
                    SliverAppBarItem()
                      ],
                    )
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
      padding: const EdgeInsets.only(left: 30, bottom: 15),
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
                    child: Text("Featured",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.white
                    ),
                    ),
                  ),
                  decoration: BoxDecoration(                                  
                   color: Colors.transparent,
                    borderRadius:BorderRadius.circular(20),
                    border: Border.all(color: Colors.white)
                  ),
                ),
                Text("Funk Gets",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),),
                Text("A Groove",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),),
                Row(children: [
                  Text("Feel the Bass",
                style: TextStyle(
                  fontSize: 13,
                  
                  color: Colors.white
                ),),
                SizedBox(width: MediaQuery.of(context).size.width*0.07,),
                Text("1 hour",
                style: TextStyle(
                  fontSize: 13,                                  
                  color: Colors.white
                ),),
                ],)
              ],
            ),
        ],
      ),
    );
  }
}
