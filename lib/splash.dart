import 'dart:async';

import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
    void initState() {
      Timer(Duration(seconds: 3), ()=> Navigator.of(context).pushNamed('/listViewScreen'),
      );
      super.initState();
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('This is splash'),
      ),
    );
  }
}
