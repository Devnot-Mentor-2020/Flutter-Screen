import 'package:flutter/material.dart';
class ListViewItem extends StatelessWidget{
    
    final DecorationImage image;
    final String text;
    final String minute;

  const ListViewItem({Key key, this.image, this.text, this.minute}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return containerItem(context);
  }

  Container containerItem(BuildContext context){
    return Container(
      padding:EdgeInsets.all(7),                 
                  width: MediaQuery.of(context).size.width*0.44,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height*0.25,                       
                        decoration: BoxDecoration(
                        image: image,
                        ),
                      ),
                      Text("$text",
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height*0.025
                      ),
                      ),
                      Text("$minute",
                        style: TextStyle(
                        color: Colors.black26,
                        fontSize: MediaQuery.of(context).size.height*0.023
                      ),
                      ),
                    ],
                  ),
                );
  }

}