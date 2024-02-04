import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/details/details_page.dart';
import 'package:flutter_application_1/widgets/activityItem/activityItem.dart';

class ConferencePage extends StatelessWidget {
  const ConferencePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("KLASİKLER")),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              ActivityItem(
                title: 'Klasik Araç',
                description: 'Sahibinden Temiz Klasik Araç',
                date: '23 Haziran 2024 - 13:30',
                location: 'İstanbul',
                contact: 'İletişim: 555-123-4567',
                payment: 'Ücretli',
                imageAsset: 'assets/images/klasik1.jpg',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ActivityDetailsPage(
                        title: 'Klasik Araç',
                        description: 'Sahibinden Temiz Klasik Araç',
                        date: '23 Haziran 2024 - 13:30',
                        location: 'İstanbul',
                        contact: 'İletişim: 555-123-4567',
                        payment: 'Ücretli',
                        imageAsset: 'assets/images/klasik1.jpg',
                      ),
                    ),
                  );
                },
              ),
              ActivityItem(
                title: 'Klasik Araç',
                description: 'Sahibinden Temiz Klasik Araç',
                date: '23 Haziran 2024 - 13:30',
                location: 'İstanbul',
                contact: 'İletişim: 555-123-4567',
                payment: 'Ücretli',
                imageAsset: 'assets/images/klasik2.jpg',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ActivityDetailsPage(
                        title: 'Klasik Araç',
                        description: 'Sahibinden Temiz Klasik Araç',
                        date: '23 Haziran 2024 - 13:30',
                        location: 'İstanbul',
                        contact: 'İletişim: 555-123-4567',
                        payment: 'Ücretli',
                        imageAsset: 'assets/images/klasik2.jpg',
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
