import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portofolio/utils/string_colors.dart';
import 'package:url_launcher/url_launcher.dart';

class WebProfileSection extends StatelessWidget {
  const WebProfileSection({super.key});

  Future<void> _launchInBrowser(Uri url) async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    final Uri urlLinkedin = Uri.parse(
        'https://www.linkedin.com/in/muhammad-dani-arya-putra-8a8791234/');
    final Uri urlInstagram = Uri.parse('https://www.instagram.com/daniarya_p/');
    final Uri urlGithub = Uri.parse('https://github.com/NotDaniArya');
    final Uri urlWa = Uri.parse('https://wa.me/6289673642206');

    return Container(
        width: double.infinity,
        height: 800,
        color: RColor.primary,
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 80),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
                child: Stack(
              children: [
                Container(
                  width: 300,
                  height: 500,
                  decoration: BoxDecoration(
                      color: RColor.onPrimary,
                      borderRadius: BorderRadius.circular(16)),
                ),
                Positioned(
                    right: 20,
                    top: 20,
                    child: Text(
                      'Muhammad Dani\nArya Putra',
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(
                              color: Colors.white, fontWeight: FontWeight.bold),
                    )),
                Positioned(
                  right: 80,
                  bottom: 0,
                  child: Container(
                    width: 400,
                    height: 400,
                    decoration: BoxDecoration(
                        color: RColor.onPrimary,
                        borderRadius: BorderRadius.circular(16)),
                  ),
                ),
                Positioned(
                    bottom: 30,
                    left: -40,
                    child: Image.asset('images/profile.png')),
              ],
            )),
            const SizedBox(
              width: 120,
            ),
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Mobile Developer, providing solutions to your problems\nand creating cool applications',
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  'I\'m Arya, a mobile developer living in Makassar, Indonesia. I really enjoy developing mobile applications using Flutter.',
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: Colors.grey,
                      ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12))),
                            backgroundColor: RColor.widGrenn,
                            padding: const EdgeInsets.all(25)),
                        onPressed: () {
                          _launchInBrowser(urlWa);
                        },
                        child: const Text(
                          'Contact Me',
                          style: TextStyle(color: Colors.white),
                        )),
                    const SizedBox(
                      width: 40,
                    ),
                    IconButton(
                        onPressed: () {
                          _launchInBrowser(urlInstagram);
                        },
                        icon: const FaIcon(
                          FontAwesomeIcons.instagram,
                          color: Colors.white,
                          size: 30,
                        )),
                    const SizedBox(
                      width: 10,
                    ),
                    IconButton(
                        onPressed: () {
                          _launchInBrowser(urlGithub);
                        },
                        icon: const FaIcon(
                          FontAwesomeIcons.github,
                          color: Colors.white,
                          size: 30,
                        )),
                    const SizedBox(
                      width: 10,
                    ),
                    IconButton(
                        onPressed: () {
                          _launchInBrowser(urlLinkedin);
                        },
                        icon: const FaIcon(
                          FontAwesomeIcons.linkedin,
                          color: Colors.white,
                          size: 30,
                        )),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                )
              ],
            )),
          ],
        ));
  }
}
