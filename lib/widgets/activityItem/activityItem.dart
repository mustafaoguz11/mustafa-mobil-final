import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/activityItem/activityItemDesktop.dart';
import 'package:flutter_application_1/widgets/activityItem/activityItemMobile.dart';
import 'package:flutter_application_1/widgets/activityItem/activityItemTablet.dart';
import 'package:flutter_application_1/widgets/responsiveWidget.dart';

class ActivityItem extends StatelessWidget {
  final String title;
  final String description;
  final String date;
  final String location;
  final String contact;
  final String payment;
  final String imageAsset;
  final Function()? onTap;

  const ActivityItem({
    super.key,
    required this.title,
    required this.description,
    required this.date,
    required this.location,
    required this.contact,
    required this.payment,
    required this.imageAsset,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      mobile: ActivityItemMobile(
        contact: contact,
        date: date,
        description: description,
        imageAsset: imageAsset,
        location: location,
        payment: payment,
        title: title,
        onTap: onTap,
      ),
      tablet: ActivityItemTablet(
        contact: contact,
        date: date,
        description: description,
        imageAsset: imageAsset,
        location: location,
        payment: payment,
        title: title,
        onTap: onTap,
      ),
      desktop: ActivityItemDesktop(
        contact: contact,
        date: date,
        description: description,
        imageAsset: imageAsset,
        location: location,
        payment: payment,
        title: title,
        onTap: onTap,
      ),
    );
  }
}
