import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/details/details_page.dart';
import 'package:flutter_application_1/pages/home/home_page.dart';
import 'package:flutter_application_1/pages/sports/sports_page.dart';
import 'package:flutter_application_1/pages/updateProfile/update_profile_page.dart';
import 'package:flutter_application_1/providers/providers.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'pages/aboutUs/about_us_page.dart';
import 'pages/activity/activity_page.dart';
import 'pages/communication/communication_page.dart';
import 'pages/login/login_page.dart';
import 'pages/profile/profile_page.dart';
import 'pages/register/register_page.dart';
import 'pages/settings/settings_page.dart';
import 'pages/welcome/welcome_page.dart';
import 'pages/concerts/conserts_page.dart';
import 'pages/conference/conference_page.dart';
import 'pages/festivals/festivals_page.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  final sharedPref = await SharedPreferences.getInstance();
  final container = ProviderContainer(overrides: [
    sharedPreferencesProvider.overrideWithValue(sharedPref),
  ]);
  runApp(
    UncontrolledProviderScope(
      container: container,
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SS Motors',
      debugShowCheckedModeBanner: false,
      routes: {
        '/home': (context) => const HomePage(),
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/profile': (context) => const ProfilePage(),
        '/update-profile': (context) => const UpdateProfilePage(),
        '/welcome': (context) => const WelcomePage(),
        '/settings': (context) => const SettingsPage(),
        '/details': (context) => const ActivityDetailsPage(),
        '/aboutus': (context) => const AboutUsPage(),
        '/activity': (context) => const ActivityPage(),
        '/communication': (context) => const CommunicationPage(),
        '/konser': (context) => const ConsertsPage(),
        '/festival': (context) => const FestivalsPage(),
        '/spor': (context) => const SportsPage(),
        '/konferans': (context) => const ConferencePage(),
      },
      initialRoute: '/welcome',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
