import 'package:flutter_application_1/enums/breakpoints.dart';
import 'package:flutter/material.dart';

class ResponsiveWidget extends StatelessWidget {
  const ResponsiveWidget({
    super.key,
    required this.mobile,
    required this.tablet,
    required this.desktop,
  });

  final Widget mobile;
  final Widget tablet;
  final Widget desktop;
  //Verdiğimiz enumlara göre ekran boyutunu alıp hangi sayfayı dönmesi gerektiğini söylediğimiz widget
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth <= Breakpoints.mobile.width) {
          return mobile;
        }
        if (constraints.maxWidth <= Breakpoints.tablet.width) {
          return tablet;
        }
        return desktop;
      },
    );
  }
}
