import 'package:flutter/material.dart';
import 'package:medium_ui/ui/shared/text_styles.dart';
import 'package:medium_ui/ui/shared/ui_helpers.dart';
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
      padding:EdgeInsets.all(paddingTop),                 
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
                      Text("$text", style: listViewItemTitleTextStyle),
                      Text("$minute", style: listViewItemMinTextStyle),
                    ],
                  ),
                );
  }

}