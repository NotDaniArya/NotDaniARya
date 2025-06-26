import 'package:flutter/material.dart';
import 'package:my_portofolio/screen/main_menu/widget/web%20view/web_navbar.dart';
import 'package:my_portofolio/screen/main_menu/widget/web%20view/web_profile_section.dart';
import 'package:my_portofolio/utils/string_colors.dart';
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

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: const WebNavbar(),
        body: WebSmoothScroll(
          scrollAnimationLength: 800,
          controller: _scrollController,
          child: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            controller: _scrollController,
            child: Column(
              children: [
                WebProfileSection(),
                Container(
                    width: double.infinity,
                    height: 1100,
                    color: RColor.secondary,
                    padding: const EdgeInsets.symmetric(
                        vertical: 30, horizontal: 80),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'A good application can make\nyour life easier',
                          style: TextTheme.of(context).headlineLarge!.copyWith(
                              color: Colors.white, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'I believe that a good application will make our lives easier.\nSee the application I have created',
                          style: TextTheme.of(context)
                              .titleMedium!
                              .copyWith(color: Colors.grey),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 80,
                        ),
                        Expanded(
                          child: GridView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: 5,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                crossAxisSpacing: 16,
                                mainAxisSpacing: 16,
                                childAspectRatio: 1,
                              ),
                              itemBuilder: (ctx, index) {
                                return Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12)),
                                  clipBehavior: Clip.antiAlias,
                                  child: Column(
                                    children: [
                                      AspectRatio(
                                        aspectRatio: 16 / 9,
                                        child: Image.asset(
                                          'images/livinmandiri.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Column(
                                          children: [
                                            Text(
                                              'Meals App',
                                              style: TextTheme.of(context)
                                                  .titleMedium!
                                                  .copyWith(
                                                      color: Colors.white),
                                            ),
                                            SizedBox(
                                              height: 8,
                                            ),
                                            Text(
                                              'Meals App is a recipe app built with Flutter, designed to help users find cooking tutorials from various categories. Its main features include advanced diet filters (such as gluten-free & vegan).',
                                              overflow: TextOverflow.clip,
                                              textAlign: TextAlign.center,
                                              style: TextTheme.of(context)
                                                  .bodyMedium!
                                                  .copyWith(
                                                    color: Colors.grey,
                                                  ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                );
                              }),
                        )
                      ],
                    )),
              ],
            ),
          ),
        ));
  }
}
