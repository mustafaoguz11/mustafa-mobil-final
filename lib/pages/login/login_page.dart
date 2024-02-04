import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/login/login_desktop_page.dart';
import 'package:flutter_application_1/pages/login/login_mobile_page.dart';
import 'package:flutter_application_1/pages/login/login_tablet_page.dart';
import 'package:flutter_application_1/widgets/responsiveWidget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveWidget(
      mobile: LoginMobilePage(),
      tablet: LoginTabletPage(),
      desktop: LoginDesktopPage(),
    );
  }
}
