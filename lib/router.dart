import 'package:classi_chat/common/widgets/error.dart';
import 'package:classi_chat/features/auth/screens/login_screen.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case LoginScreen.routeName:
    return MaterialPageRoute(
      builder: (context) => const LoginScreen(),
    );
  
    default: 
      return MaterialPageRoute(
        builder: (context) => const Scaffold (
          body: ErrorScreen(error: 'This page doesn\'t exist'),
        ),
      );
  }
}
