import 'package:camel_bolt/pages/startingPage/otp_verification.dart';
import 'package:camel_bolt/widgets/login_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
// import 'package:get/utils.dart';
import 'package:camel_bolt/widgets/white_trip_intro.dart';
import 'package:fl_country_code_picker/fl_country_code_picker.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final countryPicker = const FlCountryCodePicker();

  CountryCode countryCode =
      CountryCode(name: 'Tanzania', code: 'TZ', dialCode: '+255');

  onSubmit(String? input) {
    Get.to(() => OtpVerifaction(countryCode.dialCode + input!));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: Get.width,
        height: Get.height,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              white_trip_intro(),
              const SizedBox(height: 50),
              login_widget(countryCode, () async {
                final code = await countryPicker.showPicker(context: context);
                if (code != null) countryCode = code;
                setState(() {});
              }, onSubmit)
            ],
          ),
        ),
      ),
    );
  }
}
