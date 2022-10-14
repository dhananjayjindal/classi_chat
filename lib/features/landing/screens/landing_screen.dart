import 'package:classi_chat/export.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});
  void navigateToLoginScreen(BuildContext context) {
    Navigator.pushNamed(context, LoginScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body:SafeArea(child: Column(
        children: [
          const Text("Welcome to ClassiChat",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600),),
          SizedBox(height: size.height/9),
          Image.asset('assets/bg.png',height: 340,width: 340,),
          SizedBox(height: size.height/9),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child:  Text("Read Our Privacy Policies. Tap 'Agree and Continue' to accept the Term of Services.",style: TextStyle(color: greyColor),textAlign: TextAlign.center,),
          ),
          const SizedBox(height: 10,),
          SizedBox(width: size.width*0.75,
            child: CustomButton(text: "AGREE AND CONTINUE", onPressed: ()=>navigateToLoginScreen(context),),
            ),
        ],
      ),),
    );
  }
}
 