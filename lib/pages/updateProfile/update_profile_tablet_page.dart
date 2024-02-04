import 'dart:developer';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/providers/providers.dart';
import 'package:flutter_application_1/services/auth_service.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class UpdateProfileTabletPage extends HookConsumerWidget {
  const UpdateProfileTabletPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    late final PlatformFile image;
    Future pickImage() async {
      try {
        final result = await FilePicker.platform.pickFiles();
        if (result == null) return;
        image = result.files.first;
        return image;
      } on PlatformException catch (e) {
        log('Failed to pick image: $e');
      }
    }

    final displayName = ref.watch(displayNameController);
    final phoneNumber = ref.watch(phoneNumberController);
    final githubUrl = ref.watch(githubUrlController);
    final linkedInUrl = ref.watch(linkedInController);
    final twitterUrl = ref.watch(twitterController);
    final instagramUrl = ref.watch(instagramController);

    final auth = ref.watch(authService);
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        title: Text(
          "Profili Güncelle",
          style: GoogleFonts.lobster(
            textStyle: const TextStyle(
              fontSize: 25,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Profil Fotoğrafı:",
                  style: GoogleFonts.nunitoSans(
                    textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                MaterialButton(
                  color: Colors.blue,
                  child: const Text('Galeriden Fotoğraf Seç',
                      style: TextStyle(
                          color: Colors.white70, fontWeight: FontWeight.bold)),
                  onPressed: () {
                    pickImage();
                  },
                ),
                const SizedBox(height: 15),
                Text(
                  "İsim:",
                  style: GoogleFonts.nunitoSans(
                    textStyle: const TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    controller: displayName,
                    decoration: InputDecoration(
                      hintText: "İsminizi Girin...",
                      hintStyle: GoogleFonts.quicksand(
                        textStyle: const TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0)),
                      ),
                    ),
                  ),
                ),
                Text(
                  "Cep Telefonu:",
                  style: GoogleFonts.nunitoSans(
                    textStyle: const TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    controller: phoneNumber,
                    decoration: InputDecoration(
                      hintText: "Numaranızı Giriniz...",
                      hintStyle: GoogleFonts.quicksand(
                        textStyle: const TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0)),
                      ),
                    ),
                  ),
                ),
                Text(
                  "Github Linki:",
                  style: GoogleFonts.nunitoSans(
                    textStyle: const TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    controller: githubUrl,
                    decoration: InputDecoration(
                      hintText: "Github linkini girin...",
                      hintStyle: GoogleFonts.quicksand(
                        textStyle: const TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0)),
                      ),
                    ),
                  ),
                ),
                Text(
                  "LinkedIn Linki:",
                  style: GoogleFonts.nunitoSans(
                    textStyle: const TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    controller: linkedInUrl,
                    decoration: InputDecoration(
                      hintText: "LinkedIn linkini giriniz...",
                      hintStyle: GoogleFonts.quicksand(
                        textStyle: const TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0)),
                      ),
                    ),
                  ),
                ),
                Text(
                  "Twitter Linki:",
                  style: GoogleFonts.nunitoSans(
                    textStyle: const TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    controller: twitterUrl,
                    decoration: InputDecoration(
                      hintText: "Twitter linkini giriniz...",
                      hintStyle: GoogleFonts.quicksand(
                        textStyle: const TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0)),
                      ),
                    ),
                  ),
                ),
                Text(
                  "Instagram Linki:",
                  style: GoogleFonts.nunitoSans(
                    textStyle: const TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    controller: instagramUrl,
                    decoration: InputDecoration(
                      hintText: "Instagram linkini giriniz...",
                      hintStyle: GoogleFonts.quicksand(
                        textStyle: const TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0)),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          Colors.white,
                        ),
                        textStyle: MaterialStateProperty.all(
                            const TextStyle(fontSize: 10)),
                      ),
                      onPressed: () async {
                        final navigator = Navigator.of(context);
                        final imageUrl =
                            await auth.uploadImage(pickedFile: image);
                        await auth.updateUserName(
                            userDisplayName: displayName.text);
                        await auth.updateProfile(
                          imageUrl: imageUrl,
                          twitterUrl: twitterUrl.text,
                          userDisplayName: displayName.text,
                          instagramUrl: instagramUrl.text,
                          githubUrl: githubUrl.text,
                          linkedInUrl: linkedInUrl.text,
                          phone: phoneNumber.text,
                        );
                        navigator.pushNamedAndRemoveUntil(
                          '/profile',
                          (_) => false,
                        );
                      },
                      child: Text(
                        "Save",
                        style: GoogleFonts.nunitoSans(
                          textStyle: const TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
