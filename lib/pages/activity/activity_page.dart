import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/details/details_page.dart';
import 'package:flutter_application_1/widgets/activityItem/activityItem.dart';

class ActivityPage extends StatelessWidget {
  const ActivityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Fırsatlar")),
      body: Container(
        color: Color.fromARGB(255, 92, 91, 91), 
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                ActivityItem(
                  title: 'Mercedes Benz',
                  description: 'Sahibinden Mercedes Benz',
                  date: '23 Haziran 2017 - 18:30',
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
                          description: 'Sahibinden Mercedes Benz',
                          date: '23 Haziran 2017 - 18:30',
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
                  title: 'Honda Motor',
                  description: 'Tertemiz Honda Motor',
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
                          description: 'Tertemiz Honda Motor',
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
                  title: 'Klasik Araç',
                  description: 'Harika Fırsat Klasik Araç',
                  date: '23 Haziran 2023 - 22:30',
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
                          description: 'Harika Fırsat Klasik Araç',
                          date: '23 Haziran 2023 - 22:30',
                          location: 'İstanbul',
                          contact: 'İletişim: 555-123-4567',
                          payment: 'Ücretli',
                          imageAsset: 'assets/images/klasik1.jpg',
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
