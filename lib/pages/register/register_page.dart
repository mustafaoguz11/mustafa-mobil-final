import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/register/register_desktop_page.dart';
import 'package:flutter_application_1/pages/register/register_mobile_page.dart';
import 'package:flutter_application_1/pages/register/register_tablet_page.dart';
import 'package:flutter_application_1/widgets/responsiveWidget.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveWidget(
      mobile: RegisterMobilePage(),
      tablet: RegisterTabletPage(),
      desktop: RegisterDesktopPage(),
    );
  }
}
