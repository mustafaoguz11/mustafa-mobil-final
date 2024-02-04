import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/details/details_page.dart';
import 'package:flutter_application_1/widgets/activityItem/activityItem.dart';

class ConsertsPage extends StatelessWidget {
  const ConsertsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("BMW CARS")),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              ActivityItem(
                title: 'BMW M2 ',
                description: 'İlk Sahibinden Hatasız',
                date: '23 Haziran 2024 - 18:30',
                location: 'İstanbul',
                contact: 'İletişim: 555-123-4567',
                payment: 'Ücretli',
                imageAsset: 'assets/images/bmwm2.jpg',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ActivityDetailsPage(
                        title: 'BMW M2',
                        description: 'İlk Sahibinden Hatasız',
                        date: '23 Haziran 2024 - 18:30',
                        location: 'İstanbul',
                        contact: 'İletişim: 555-123-4567',
                        payment: 'Ücretli',
                        imageAsset: 'assets/images/bmwm2.jpg',
                      ),
                    ),
                  );
                },
              ),
              ActivityItem(
                title: 'BMW M4',
                description: 'İlk Sahibinden Hatasız',
                date: '12 Haziran 2023 - 15:00',
                location: 'İstanbul',
                contact: 'İletişim: 555-555-5555',
                payment: 'Ücretli',
                imageAsset: 'assets/images/bmwm4.jpg',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ActivityDetailsPage(
                        title: 'BMW M4',
                        description: 'İlk Sahibinden Hatasız',
                        date: '12 Haziran 2023 - 15:00',
                        location: 'İstanbul',
                        contact: 'İletişim: 555-555-5555',
                        payment: 'Ücretli',
                        imageAsset: 'assets/images/bmwm4.jpg',
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
