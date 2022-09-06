import 'package:classi_chat/colors.dart';
import 'package:classi_chat/features/landing/screens/landing_screen.dart';
import 'package:classi_chat/firebase_options.dart';
import 'package:classi_chat/responsive/responsive_layout.dart';
import 'package:classi_chat/router.dart';
import 'package:classi_chat/screens/mobile_screen_layout.dart';
import 'package:classi_chat/screens/web_screen_layout.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); 
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'ClassiChat',
        theme:
            ThemeData.dark().copyWith(scaffoldBackgroundColor: backgroundColor,appBarTheme:const AppBarTheme(
              color: appBarColor
            ),),
            
        onGenerateRoute: (settings)=>generateRoute(settings),
        home: const LandingScreen()
    );
  }
}
