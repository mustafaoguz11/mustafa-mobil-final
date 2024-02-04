import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/details/details_page.dart';
import 'package:flutter_application_1/widgets/activityItem/activityItem.dart';

class SportsPage extends StatelessWidget {
  const SportsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Motorsikletler")),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              ActivityItem(
                title: 'Honda Motor',
                description: 'İlk Sahibinden Hasarsız',
                date: '12 Haziran 2023 - 15:00',
                location: 'İstanbul',
                contact: 'İletişim: 555-555-5555',
                payment: 'Ücretli',
                imageAsset: 'assets/images/hondacbr250r.jpg',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ActivityDetailsPage(
                        title: 'Honda Motor',
                        description: 'İlk Sahibinden Hasarsız',
                        date: '12 Haziran 2023 - 15:00',
                        location: 'İstanbul',
                        contact: 'İletişim: 555-555-5555',
                        payment: 'Ücretli',
                        imageAsset: 'assets/images/hondacbr250r.jpg',
                      ),
                    ),
                  );
                },
              ),
              ActivityItem(
                title: 'Honda Motor',
                description: 'İlk Sahibinden Hasarsız',
                date: '23 Haziran 2023 - 22:30',
                location: 'İstanbul',
                contact: 'İletişim: 555-123-4567',
                payment: 'Ücretli',
                imageAsset: 'assets/images/HONCADCR600F.jpg',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ActivityDetailsPage(
                        title: 'Honda Motor',
                        description: 'İlk Sahibinden Hasarsız',
                        date: '23 Haziran 2023 - 22:30',
                        location: 'İstanbul',
                        contact: 'İletişim: 555-123-4567',
                        payment: 'Ücretli',
                        imageAsset: 'assets/images/HONCADCR600F.jpg',
                      ),
                    ),
                  );
                },
              ),
              ActivityItem(
                title: 'Honda Motor',
                description: 'İlk Sahibinden Hasarsız',
                date: '13 Haziran 2023 - 14:30',
                location: 'İstanbul',
                contact: 'İletişim: 555-123-4567',
                payment: 'Ücretli',
                imageAsset: 'assets/images/HONCADCR600F.jpg',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ActivityDetailsPage(
                        title: 'Honda Motor',
                        description: 'İlk Sahibinden Hasarsız',
                        date: '13 Haziran 2023 - 14:30',
                        location: 'İstanbul',
                        contact: 'İletişim: 555-123-4567',
                        payment: 'Ücretli',
                        imageAsset: 'assets/images/HONCADCR600F.jpg',
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
