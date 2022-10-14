import 'package:classi_chat/export.dart';
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
            const Text("ClassiChat will need  to verify your phone number"),
            const SizedBox(height: 10),
            TextButton(onPressed:pickCountry, child: const Text('Pick Country')),
            const SizedBox(height: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (country != null) Text('+${country!.phoneCode}'),
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: size.width * 0.7,
                  child: TextField(
                    
                    controller: phoneContoller,
                    decoration: const InputDecoration(
                      hintText: "Phone Number",
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 10),
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
