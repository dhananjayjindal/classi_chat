import 'package:classi_chat/export.dart';

class OTPScreen extends StatefulWidget {
  static const String routeName = '/otpScreen';
  final String verificationId;
  const OTPScreen({super.key, required this.verificationId});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
