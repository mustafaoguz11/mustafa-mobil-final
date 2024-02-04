import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/details/details_page.dart';
import 'package:flutter_application_1/widgets/activityItem/activityItem.dart';

class FestivalsPage extends StatelessWidget {
  const FestivalsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mercedes"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              ActivityItem(
                title: 'Mercedes Benz',
                description: 'İlk Sahibinden Mercedes',
                date: '5 Haziran 2023 - 15:00',
                location: 'İstanbul',
                contact: 'İletişim: 555-555-5555',
                payment: 'Ücretli',
                imageAsset: 'assets/images/mercedesbenzslsamg(3).jpg',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ActivityDetailsPage(
                        title: 'Mercedes Benz',
                        description: 'İlk Sahibinden Mercedes',
                        date: '5 Haziran 2023 - 15:00',
                        location: 'İstanbul',
                        contact: 'İletişim: 555-555-5555',
                        payment: 'Ücretli',
                        imageAsset: 'assets/images/mercedesbenzslsamg(3).jpg',
                      ),
                    ),
                  );
                },
              ),
              ActivityItem(
                title: 'Mercedes Benz',
                description: 'İlk Sahibinden Mercedes',
                date: '23 Haziran 2024 - 12:30',
                location: 'İstanbul',
                contact: 'İletişim: 555-123-4567',
                payment: 'Ücretli',
                imageAsset: 'assets/images/mercedesbenzslsamg(1).jpg',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ActivityDetailsPage(
                        title: 'Mercedes Benz',
                        description: 'İlk Sahibinden Mercedes',
                        date: '23 Haziran 2024 - 12:30',
                        location: 'İstanbul',
                        contact: 'İletişim: 555-123-4567',
                        payment: 'Ücretli',
                        imageAsset: 'assets/images/mercedesbenzslsamg(1).jpg',
                      ),
                    ),
                  );
                },
              ),
              ActivityItem(
                title: 'Mercedes Benz',
                description: 'İlk Sahibinden Mercedes',
                date: '10 Haziran 2024 - 12:30',
                location: 'İstanbul',
                contact: 'İletişim: 555-123-4567',
                payment: 'Ücretsiz',
                imageAsset: 'assets/images/mercedesbenzslsamg (2).jpg',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ActivityDetailsPage(
                        title: 'Mercedes Benz',
                        description: 'İlk Sahibinden Mercedes',
                        date: '10 Haziran 2024 - 12:30',
                        location: 'İstanbul',
                        contact: 'İletişim: 555-123-4567',
                        payment: 'Ücretsiz',
                        imageAsset: 'assets/images/mercedesbenzslsamg (2).jpg',
                      ),
                    ),
                  );
                },
              ),
              // Dilediğin kadar ActivityItem ekleyebilirsin
            ],
          ),
        ),
      ),
    );
  }
}
