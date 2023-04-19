import 'package:flutter/material.dart';

import 'screen/home/home_screen.dart';
import 'screen/signin/signin_screen.dart';
import 'screen/signup/signup_screen.dart';
import 'screen/signup_address/signup_address_screen.dart';
import 'screen/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeNamed: (context) => const SplashScreen(),
  SignInScreen.routeNamed: (context) => const SignInScreen(),
  SignUpScreen.routeNamed: (context) => const SignUpScreen(),
  SignUpAddress.routeNamed: (context) => const SignUpAddress(),
  HomeScreen.routeNamed: (context) => const HomeScreen(),
};
