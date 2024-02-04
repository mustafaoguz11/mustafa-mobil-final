import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/providers/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CommunicationDesktopPage extends HookConsumerWidget {
  const CommunicationDesktopPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final contactName = ref.watch(contactNameController);
    final contactMail = ref.watch(contactMailController);
    final contactMessage = ref.watch(contactMessageController);
    final notifier = ref.read(contactProvider.notifier);
    final contact = ref.watch(contactProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('İletişim'),
      ),
      backgroundColor: Colors.white, // Eklenen satır
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'İletişim Bilgileri',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Ad Soyad:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 500,
                child: TextField(
                  controller: contactName,
                  decoration: const InputDecoration(
                    hintText: 'Adınız ve soyadınızı girin',
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'E-posta:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 500,
                child: TextField(
                  controller: contactMail,
                  decoration: const InputDecoration(
                    hintText: 'E-posta adresinizi girin',
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Mesajınız:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 500,
                child: TextField(
                  controller: contactMessage,
                  maxLines: 4, //SATIR BIRAKMAYA YARAR
                  decoration: const InputDecoration(
                    hintText: 'Mesajınızı buraya yazın',
                  ),
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Map<String, dynamic> map = {
                    'contactName': contactName.text,
                    'contactMail': contactMail.text,
                    'contactMessage': contactMessage.text,
                  };
                  String rawJson = jsonEncode(map);
                  notifier.add(rawJson);
                  contactName.clear();
                  contactMail.clear();
                  contactMessage.clear();
                },
                child: const Text('Gönder'),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Kayıtlı İletişim",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 20),
              ListView.builder(
                itemCount: contact.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  final decodedContact = jsonDecode(contact[index]);
                  return ListTile(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text(
                              'Ad Soyad: ${decodedContact['contactName']}',
                              style: const TextStyle(color: Colors.black),
                              textAlign: TextAlign.left,
                            ),
                            Text(
                              'Mail: ${decodedContact['contactMail']}',
                              textAlign: TextAlign.left,
                              style: const TextStyle(color: Colors.black),
                            ),
                            Text(
                              'Mesaj: ${decodedContact['contactMessage']}',
                              textAlign: TextAlign.left,
                              style: const TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                        IconButton(
                          icon: const Icon(Icons.delete),
                          onPressed: () {
                            notifier.remove(contact[index]);
                          },
                        ),
                      ],
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
