import 'package:flutter/material.dart';
import 'package:my_account/pages/introduction_page.dart';
import 'package:my_account/profile_ui.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      initialRoute: ProfileUI.id,
      routes:{
        ProfileUI.id: (context) => const ProfileUI(),
        IntroductionPage.id: (context) => const IntroductionPage(),
      }
    );
  }
}
