import 'package:flutter/material.dart';
import 'package:flutter_application_1/providers/providers.dart';
import 'package:flutter_application_1/services/auth_service.dart';
import 'package:flutter_application_1/widgets/profileItem.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfilePage extends HookConsumerWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final auth = ref.watch(authService);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profil Hesabın"),
      ),
      body: Center(
        child: Column(
          children: [
            ref.watch(profileImageProvider).when(
                  error: (error, stackTrace) => const SizedBox(),
                  loading: () => const CircularProgressIndicator(),
                  data: (userInfo) {
                    final image = userInfo['imageUrl'];
                    final githubUrl =
                        Uri.parse(userInfo['githubUrl'] ?? 'None');
                    final twitterUrl =
                        Uri.parse(userInfo['twitterUrl'] ?? 'None');
                    final instagramUrl =
                        Uri.parse(userInfo['instagramUrl'] ?? 'None');
                    final linkedInUrl =
                        Uri.parse(userInfo['linkedInUrl'] ?? 'None');
                    final emailUrl =
                        Uri(scheme: 'mailto', path: auth.user!.email);
                    final phone =
                        Uri(scheme: 'tel', path: userInfo['phone'] ?? '');
                    return Column(
                      children: [
                        ProfileItem(
                          avatar: CircleAvatar(
                            radius: 40,
                            backgroundImage: image != null
                                ? NetworkImage(image)
                                : const AssetImage("assets/images/appicon.jpg")
                                    as ImageProvider,
                          ),
                          name: userInfo['userDisplayName'] ?? 'None',
                          onTap: () {},
                        ),
                        const Divider(),
                        ProfileItem(
                          name: "Email: ${auth.user!.email}",
                          avatar: const Icon(
                            Icons.mail,
                            color: Color.fromARGB(255, 255, 91, 91),
                          ),
                          onTap: () {
                            if (emailUrl.path != 'None') {
                              launchUrl(emailUrl,
                                  mode: LaunchMode.externalApplication);
                            }
                          },
                        ),
                        const Divider(),
                        ProfileItem(
                          name: "LinkedIn:${userInfo['linkedInUrl'] ?? 'None'}",
                          avatar: const Icon(
                            Icons.link,
                            color: Color.fromARGB(255, 255, 91, 91),
                          ),
                          onTap: () {
                            if (linkedInUrl.path != 'None') {
                              launchUrl(linkedInUrl,
                                  mode: LaunchMode.externalApplication);
                            }
                          },
                        ),
                        const Divider(),
                        ProfileItem(
                          name: "Github: ${userInfo['githubUrl'] ?? 'None'}",
                          avatar: const Icon(
                            Icons.link,
                            color: Color.fromARGB(255, 255, 91, 91),
                          ),
                          onTap: () {
                            if (linkedInUrl.path != 'None') {
                              launchUrl(githubUrl,
                                  mode: LaunchMode.externalApplication);
                            }
                          },
                        ),
                        const Divider(),
                        ProfileItem(
                          name:
                              "İnstagram: ${userInfo['instagramUrl'] ?? 'None'}",
                          avatar: const Icon(
                            Icons.link,
                            color: Color.fromARGB(255, 255, 91, 91),
                          ),
                          onTap: () {
                            if (linkedInUrl.path != 'None') {
                              launchUrl(instagramUrl,
                                  mode: LaunchMode.externalApplication);
                            }
                          },
                        ),
                        const Divider(),
                        ProfileItem(
                          name: "Twitter: ${userInfo['twitterUrl'] ?? 'None'}",
                          avatar: const Icon(
                            Icons.link,
                            color: Color.fromARGB(255, 255, 91, 91),
                          ),
                          onTap: () {
                            if (linkedInUrl.path != 'None') {
                              launchUrl(twitterUrl,
                                  mode: LaunchMode.externalApplication);
                            }
                          },
                        ),
                        const Divider(),
                        ProfileItem(
                          name: "Cep Telefonu: ${userInfo['phone'] ?? 'None'}",
                          avatar: const Icon(
                            Icons.call,
                            color: Color.fromARGB(255, 255, 91, 91),
                          ),
                          onTap: () {
                            if (phone.path != 'None') {
                              launchUrl(phone,
                                  mode: LaunchMode.externalApplication);
                            }
                          },
                        ),
                        const Divider(),
                        const SizedBox(height: 30),
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
                              onPressed: () {
                                Navigator.pushNamed(context, '/update-profile');
                              },
                              child: Text(
                                "Update Profile",
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
                    );
                  },
                ),
          ],
        ),
      ),
    );
  }
}
