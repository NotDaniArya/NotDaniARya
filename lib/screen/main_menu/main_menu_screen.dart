import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portofolio/screen/main_menu/widget/appbar.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_smooth_scroll/web_smooth_scroll.dart';

class MainMenuScreen extends StatefulWidget {
  const MainMenuScreen({super.key});

  @override
  State<MainMenuScreen> createState() => _MainMenuScreenState();
}

class _MainMenuScreenState extends State<MainMenuScreen> {
  late ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController();
    super.initState();
  }

  Future<void> _launchInBrowser(Uri url) async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final Uri _urlLinkedin = Uri.parse(
        'https://www.linkedin.com/in/muhammad-dani-arya-putra-8a8791234/');
    final Uri _urlInstagram =
        Uri.parse('https://www.instagram.com/daniarya_p/');
    final Uri _urlGithub = Uri.parse('https://github.com/NotDaniArya');
    final Uri _urlWa = Uri.parse('https://wa.me/6289673642206');

    return Scaffold(
        appBar: const ArAppBar(),
        body: WebSmoothScroll(
          scrollAnimationLength: 800,
          controller: _scrollController,
          child: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            controller: _scrollController,
            child: Column(
              children: [
                Container(
                    width: double.infinity,
                    height: 800,
                    color: Theme.of(context).colorScheme.primaryContainer,
                    padding: const EdgeInsets.symmetric(
                        vertical: 30, horizontal: 80),
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
                                  color: const Color.fromARGB(255, 46, 53, 90),
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
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                )),
                            Positioned(
                              right: 80,
                              bottom: 0,
                              child: Container(
                                width: 400,
                                height: 400,
                                decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(255, 46, 53, 90),
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
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineLarge!
                                  .copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Text(
                              'I\'m Arya, a mobile developer living in Makassar, Indonesia. I really enjoy developing mobile applications using Flutter.',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(
                                    color: Colors.white,
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
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(12))),
                                        backgroundColor: const Color.fromARGB(
                                            255, 31, 216, 111),
                                        padding: const EdgeInsets.all(25)),
                                    onPressed: () {
                                      _launchInBrowser(_urlWa);
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
                                      _launchInBrowser(_urlInstagram);
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
                                      _launchInBrowser(_urlGithub);
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
                                      _launchInBrowser(_urlLinkedin);
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
                    )),
                Container(
                  width: double.infinity,
                  height: 800,
                  color: Colors.redAccent,
                  child: Center(
                    child: Text(
                      'Under Develop',
                      style: Theme.of(context)
                          .textTheme
                          .displayLarge!
                          .copyWith(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
