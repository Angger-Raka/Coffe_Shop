import 'package:flutter/material.dart';

import 'screen/signin/signin_screen.dart';
import 'screen/signup/signup_screen.dart';
import 'screen/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeNamed: (context) => const SplashScreen(),
  SignInScreen.routeNamed: (context) => const SignInScreen(),
  SignUpScreen.routeNamed: (context) => const SignUpScreen(),
};
