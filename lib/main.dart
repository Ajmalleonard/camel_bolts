import 'package:camel_bolt/firebase_options.dart';
import 'package:camel_bolt/pages/startingPage/LoginPage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const CamelBolt());
}

class CamelBolt extends StatelessWidget {
  const CamelBolt({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(textTheme),
      ),
      initialRoute: '/LoginPage',
      getPages: [GetPage(name: '/LoginPage', page: () => const LoginPage())],
    );
  }
}
