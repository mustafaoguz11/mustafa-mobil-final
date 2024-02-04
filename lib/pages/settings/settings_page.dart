import 'package:flutter/material.dart';
import 'package:flutter_application_1/services/auth_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_application_1/widgets/settingsItem.dart';

class SettingsPage extends HookConsumerWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final auth = ref.watch(authService);
    return Scaffold(
        appBar: AppBar(
          title: const Text("Ayarlar"),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 5),
                SettingItems(
                  title: "Şehir Değiştir",
                  onTap: () {},
                ),
                SettingItems(
                  title: "Çerezler",
                  onTap: () {},
                ),
                SettingItems(
                  title: "Bize Bildirim Gönderin",
                  onTap: () {
                    Navigator.pushNamed(context, "/communication");
                  },
                ),
                SettingItems(
                  title: "Bildirim Ayarları",
                  onTap: () {},
                ),
                SettingItems(
                  title: "Hesabımı Devre Dışı Bırak",
                  onTap: () async {
                    await auth.removeUser();
                    await auth.logout();
                  },
                ),
                const SizedBox(height: 265),
              ],
            ),
          ),
        ));
  }
}
