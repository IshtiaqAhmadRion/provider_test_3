import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_test_3/home/home_page.dart';
import 'package:provider_test_3/providers/1st_provider.dart';
import 'package:provider_test_3/second_screen/second_screen.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => UserDetails(),
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
                       home: FirstPage(),
      routes: {
        FirstPage.routeName: (context)=> FirstPage(),
        SecondScreen.routeName: (context)=>SecondScreen()
      },
    ),
  ));
}
