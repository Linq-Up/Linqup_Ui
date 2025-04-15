import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/page/homepage/homepage.dart';
import 'package:linqup_mobile_application/page/login/login.dart';
import 'package:linqup_mobile_application/page/onboard/onboard_page.dart';
import 'package:linqup_mobile_application/page/sign_up/sign_up.dart';
import 'package:linqup_mobile_application/store/state_manager/make_and_search_state.dart';
import 'package:linqup_mobile_application/store/state_manager/navigation_menu_state.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => MakeAndSearchStateNav()),
        ChangeNotifierProvider(create: (_) => NavigationMenuState()),
      ],
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Scaffold(
        body: OnboardPage(),
        // Homepage(),
      ),
      routes: {
        '/login': (context) => const Login(),
        '/sign-up': (context) => const SignUp(),
        '/home': (context) => const Homepage(),
      },
    );
  }
}
