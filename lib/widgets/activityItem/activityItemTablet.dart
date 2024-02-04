import 'package:flutter/material.dart';

class ActivityItemTablet extends StatelessWidget {
  final String title;
  final String description;
  final String date;
  final String location;
  final String contact;
  final String payment;
  final String imageAsset;
  final Function()? onTap;

  const ActivityItemTablet({
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
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: onTap,
        child: Container(
          color: Color.fromARGB(255, 15, 69, 112), 
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 600,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(imageAsset),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              const SizedBox(height: 16),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                description,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Row(
                      children: [
                        const Icon(Icons.location_on),
                        const SizedBox(width: 8),
                        Text(location),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.phone),
                      const SizedBox(width: 8),
                      Text(contact),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
