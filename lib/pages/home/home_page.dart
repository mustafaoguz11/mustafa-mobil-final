import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/details/details_page.dart';
import 'package:flutter_application_1/providers/providers.dart';
import 'package:flutter_application_1/services/auth_service.dart';
import 'package:flutter_application_1/widgets/activityItem/activityItem.dart';
import 'package:flutter_application_1/widgets/menuItem.dart';
import 'package:flutter_application_1/widgets/storyItem.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../widgets/profileItem.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final auth = ref.watch(authService);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Ana Sayfa",
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            ref.watch(profileImageProvider).when(
                  error: (error, stackTrace) => const SizedBox(),
                  loading: () => const CircularProgressIndicator(),
                  data: (userInfo) {
                    final image = userInfo['imageUrl'];
                    return ProfileItem(
                      avatar: CircleAvatar(
                        radius: 40,
                        backgroundImage: image != null
                            ? NetworkImage(image)
                            : const AssetImage("assets/images/appicon.jpg")
                                as ImageProvider,
                      ),
                      name: userInfo['userDisplayName'] ?? 'None',
                      onTap: () => Navigator.pushNamed(context, "/profile"),
                    );
                  },
                ),
            const Divider(),
            Expanded(
              child: Column(
                children: [
                  MenuItem(
                    title: "Ana Ekran",
                    icon: const Icon(
                      Icons.home,
                      size: 30,
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, "/home");
                    },
                  ),
                  MenuItem(
                    title: "Fırsatlar",
                    icon: const Icon(
                      Icons.local_activity,
                      size: 30,
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, "/activity");
                    },
                  ),
                  MenuItem(
                    title: "Hakkımızda",
                    icon: const Icon(
                      Icons.info_outline,
                      size: 30,
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, "/aboutus");
                    },
                  ),
                  MenuItem(
                    title: "Iletişim",
                    icon: const Icon(
                      Icons.message,
                      size: 30,
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, "/communication");
                    },
                  ),
                  MenuItem(
                    title: "Ayarlar",
                    icon: const Icon(
                      Icons.settings,
                      size: 30,
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, "/settings");
                    },
                  ),
                ],
              ),
            ),
            MenuItem(
              icon: const Icon(
                Icons.logout_outlined,
                size: 30,
              ),
              onTap: () async {
                final navigator = Navigator.of(context);
                await auth.logout();
                navigator.pushNamedAndRemoveUntil("/welcome", (route) => false);
              },
              title: "Çıkış Yap",
            ),
            const SizedBox(height: 30),
            const Text(
              "Version 1.0.5",
              style: TextStyle(color: Colors.grey, fontSize: 13),
            ),
          ],
        ),
      ),
      body: Container(
        color: Color.fromARGB(255, 92, 91, 91),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Row(
                        children: [
                          Icon(Icons.motorcycle_rounded),
                          Padding(
                            padding: EdgeInsets.only(left: 5),
                            child: Text(
                              "SS Motors",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      StoryItem("BMW", Icons.car_repair, () {
                        Navigator.pushNamed(context, '/konser');
                      }),
                      StoryItem("Mercedes", Icons.car_repair, () {
                        Navigator.pushNamed(context, '/festival');
                      }),
                      StoryItem2("Motorlar", Icons.motorcycle, () {
                        Navigator.pushNamed(context, '/spor');
                      }),
                      StoryItem2("Klasikler", Icons.car_repair, () {
                        Navigator.pushNamed(context, '/konferans');
                      }),
                    ],
                  ),
                ),
                ActivityItem(
                  title: 'Mercedes Benz',
                  description: 'İlk Sahibinden Araç',
                  date: '12 Aralık 2023 - 15:00',
                  location: 'İstanbul',
                  contact: 'İletişim: 555-555-5555',
                  payment: 'Ücretli',
                  imageAsset: 'assets/images/MERCEDESBENZ280SE.jpg',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ActivityDetailsPage(
                          title: 'Mercedes Benz',
                          description: 'İlk Sahibinden Araç',
                          date: '12 Aralık 2023 - 15:00',
                          location: 'İstanbul',
                          contact: 'İletişim: 555-555-5555',
                          payment: 'Ücretli',
                          imageAsset: 'assets/images/MERCEDESBENZ280SE.jpg',
                        ),
                      ),
                    );
                  },
                ),
                ActivityItem(
                  title: 'Mercedes Benz',
                  description: 'İlk Sahibinden Araç',
                  date: '12 Haziran 2023 - 15:00',
                  location: 'İstanbul',
                  contact: 'İletişim: 555-555-5555',
                  payment: 'Ücretli',
                  imageAsset: 'assets/images/BMW3.15CABRİO.jpg',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ActivityDetailsPage(
                          title: 'Mercedes Benz',
                          description: 'İlk Sahibinden Araç',
                          date: '12 Haziran 2023 - 15:00',
                          location: 'İstanbul',
                          contact: 'İletişim: 555-555-5555',
                          payment: 'Ücretli',
                          imageAsset: 'assets/images/BMW3.15CABRİO.jpg',
                        ),
                      ),
                    );
                  },
                ),
                ActivityItem(
                  title: 'Mercedes Benz',
                  description: 'İlk Sahibinden Araç',
                  date: '13 Haziran 2023 - 14:30',
                  location: 'İstanbul',
                  contact: 'İletişim: 555-123-4567',
                  payment: 'Ücretli',
                  imageAsset: 'assets/images/bmwm3coupe.jpg',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ActivityDetailsPage(
                          title: 'Mercedes Benz',
                          description: 'İlk Sahibinden Araç',
                          date: '13 Haziran 2023 - 14:30',
                          location: 'İstanbul',
                          contact: 'İletişim: 555-123-4567',
                          payment: 'Ücretli',
                          imageAsset: 'assets/images/bmwm3coupe.jpg',
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
