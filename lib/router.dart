import 'package:classi_chat/export.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case LoginScreen.routeName:
    return MaterialPageRoute(
      builder: (context) => const LoginScreen(),
    );
    case OTPScreen.routeName: 
    final String verificationId = settings.arguments as String;
    return MaterialPageRoute(
      builder: (context) => OTPScreen(verificationId: verificationId, ),
    );
  
    default: 
      return MaterialPageRoute(
        builder: (context) => const Scaffold (
          body: ErrorScreen(error: 'This page doesn\'t exist'),
        ),
      );
  }
}
