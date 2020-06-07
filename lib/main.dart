import 'package:flutter/material.dart';
import 'package:medium_ui/ui/shared/theme.dart';
import 'package:medium_ui/ui/view/home_page/home_page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: healthoTheme,
      debugShowCheckedModeBanner: false,     
      home: HomePage()
    );
  }
}


