import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final twitterUrl = Uri.parse('https://twitter.com/');
    final facebookUrl = Uri.parse('https://facebook.com/');
    final instagramUrl = Uri.parse('https://instagram.com/');
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hakkımızda"),
      ),
      body: Container(
        color: Color.fromARGB(255, 92, 91, 91),
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset(
                    'assets/images/ss_motors-removebg-preview.webp',
                    width: 150,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Biz Kimiz?',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Günümüzde, hızlı yaşam temposunda güvenilir bir araç veya motor sahibi olmak, bağımsızlık ve mobiliteyi artırmanın anahtarıdır. Doğru araç seçimi, kişisel ihtiyaçları karşılamak ve uzun vadeli memnuniyet sağlamak için kritiktir. İkinci el alımlarda güvenilir satıcılarla çalışmak ve araç performansını değerlendirmek, sağlam bir yatırımın temelini oluşturur. Bütçenizi dengelerken, kaliteli bir araç veya motor edinmek uzun vadede tasarruf sağlar. Güvenilir satıcılarla çalışmak, müşteri memnuniyetini ön planda tutmak ise keyifli bir sürüş deneyimi için önemlidir. Araç sahibi olmak, sadece bir taşıma aracı değil, aynı zamanda özgürlük ve konforun bir simgesidir.',
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 16),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 44),
                    const Text(
                      'Sosyal Medya Hesaplarımız',
                      style: TextStyle(fontSize: 21),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            SocialMediaIcon(
                              icon: Icons.facebook,
                              onTap: () {
                                launchUrl(facebookUrl,
                                    mode: LaunchMode.externalApplication);
                              },
                            ),
                            const Text(
                              'Facebook',
                            ),
                          ],
                        ),
                        const SizedBox(width: 16),
                        Column(
                          children: [
                            SocialMediaIcon(
                              icon: Icons.flutter_dash,
                              onTap: () {
                                launchUrl(twitterUrl,
                                    mode: LaunchMode.externalApplication);
                              },
                            ),
                            const Text(
                              'Twitter',
                            ),
                          ],
                        ),
                        const SizedBox(width: 16),
                        Column(
                          children: [
                            SocialMediaIcon(
                              icon: Icons.photo_camera,
                              onTap: () {
                                launchUrl(instagramUrl,
                                    mode: LaunchMode.externalApplication);
                              },
                            ),
                            const Text(
                              'İnstagram',
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SocialMediaIcon extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;

  const SocialMediaIcon({
    Key? key,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CircleAvatar(
        backgroundColor: Colors.blue,
        radius: 20,
        child: Icon(
          icon,
          color: Colors.white,
        ),
      ),
    );
  }
}
