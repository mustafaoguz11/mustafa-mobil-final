import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/activityItem/activityItem.dart';

class ActivityDetailsPage extends StatelessWidget {
  final String? title;
  final String? description;
  final String? date;
  final String? location;
  final String? contact;
  final String? payment;
  final String? imageAsset;

  const ActivityDetailsPage({
    Key? key,
    this.title,
    this.description,
    this.date,
    this.location,
    this.contact,
    this.payment,
    this.imageAsset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title!)),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ActivityItem(
                  title: title!,
                  description: description!,
                  date: date!,
                  location: location!,
                  contact: contact!,
                  payment: payment!,
                  imageAsset: imageAsset!),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Satın Al'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
