import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/updateProfile/update_profile_desktop_page.dart';
import 'package:flutter_application_1/pages/updateProfile/update_profile_mobile_page.dart';
import 'package:flutter_application_1/pages/updateProfile/update_profile_tablet_page.dart';
import 'package:flutter_application_1/widgets/responsiveWidget.dart';

class UpdateProfilePage extends StatelessWidget {
  const UpdateProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveWidget(
      mobile: UpdateProfileMobilePage(),
      tablet: UpdateProfileTabletPage(),
      desktop: UpdateProfileDesktopPage(),
    );
  }
}
