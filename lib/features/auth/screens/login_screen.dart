import 'package:classi_chat/colors.dart';
import 'package:classi_chat/common/widgets/custom_button.dart';
import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = '/login-screen';
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final phoneContoller = TextEditingController();
  Country? country;
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    phoneContoller.dispose();
  }

  void pickCountry() {
    showCountryPicker(
        context: context,
        onSelect: (Country _country) {
          setState(() {
            country = _country;
          });
        });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Enter Your Phone Number"),
        elevation: 0,
        backgroundColor: backgroundColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("ClassiChat will need  to verify your phone number"),
            SizedBox(height: 10),
            TextButton(onPressed:pickCountry, child: Text('Pick Country')),
            SizedBox(height: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (country != null) Text('+${country!.phoneCode}'),
                SizedBox(
                  width: 10,
                ),
                SizedBox(
                  
                  width: size.width * 0.7,
                  child: TextField(
                    
                    controller: phoneContoller,
                    decoration: InputDecoration(
                      hintText: "Phone Number",
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: size.height * 0.6),
            SizedBox(
              width: 90,
              child: CustomButton(text: 'NEXT', onPressed: () {}),
            )
          ],
        ),
      ),
    );
  }
}
