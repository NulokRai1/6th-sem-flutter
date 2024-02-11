import 'dart:async';
import 'dart:js';

import 'package:flutter/material.dart';
import 'package:sixth_sem/list_view.dart';
import 'package:sixth_sem/splash.dart';
import 'package:sixth_sem/top_picks.dart';

import 'dashboard.dart';
import 'grid_view.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter App!!',
    theme: ThemeData(
      colorSchemeSeed: Colors.cyan,
      useMaterial3: false,
      brightness: Brightness.light,
    ),
    darkTheme: ThemeData(
      colorSchemeSeed: Color.fromARGB(255, 247, 38, 195),
      useMaterial3: false,
      brightness: Brightness.dark,
    ),
    routes:{
      '/':(BuildContext context)=>Splash(),
      '/grid':(context)=>Grid(),
      '/dashboard':(context)=> Dashboard(),
      '/listViewScreen': (context)=> ListViewScreen(),
      '/topPicks': (context)=> TopPicks(),
      '/mainScreen': (context) =>MyApp(),
    } ,
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int _currentIndex = 0;
  final pages = [
    Dashboard(),
    TopPicks(),
    ListViewScreen(),
  ];
  int? selectedIndex;

  // This widget is the root of your application.ride
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        currentIndex: _currentIndex,

        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.holiday_village),
              label: 'Dashboard'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.holiday_village),
              label: 'List View'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box_sharp),
              label: 'Account'
          )
        ],

      ),
      body: pages.elementAt(_currentIndex),

    );
  }
}