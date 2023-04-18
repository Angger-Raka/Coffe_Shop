import 'package:coffe_shope/routes.dart';
import 'package:flutter/material.dart';

import 'screen/signin/siginin_screen.dart';
// import 'screen/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: routes,
      initialRoute: SignInScreen.routeNamed,
    );
  }
}
