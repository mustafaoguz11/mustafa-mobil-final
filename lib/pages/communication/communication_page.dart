import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/communication/communation_tablet_page.dart';
import 'package:flutter_application_1/pages/communication/communication_desktop_page.dart';
import 'package:flutter_application_1/pages/communication/communication_mobile_page.dart';
import 'package:flutter_application_1/widgets/responsiveWidget.dart';

class CommunicationPage extends StatelessWidget {
  const CommunicationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveWidget(
      mobile: CommunicationMobilePage(),
      tablet: CommunicationTabletPage(),
      desktop: CommunicationDesktopPage(),
    );
  }
}
