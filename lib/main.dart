import 'package:find_influencer/pages/splash.dart';
import 'package:find_influencer/providers/influencer_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => InfluencerProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashPage(),
      ),
    );

    // return MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   home: SplashPage(),
    // );
  }
}
