import 'package:flutter/material.dart';
import 'package:my_portfolio/features/about_me/presentation/pages/about_me_page.dart';
import 'package:my_portfolio/features/contact/presentation/pages/contact_page.dart';
import 'package:my_portfolio/features/projects/presentation/pages/projects_page.dart';
import 'package:my_portfolio/features/work/presentation/pages/works_page.dart';

import '../widgets/section_nav_bar.dart';
import '../widgets/top_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late int currentSection;
  late final PageController _pageController;

  @override
  void initState() {
    currentSection = 0;
    _pageController = PageController(initialPage: currentSection);
    super.initState();
  }

  void changePage(int indexPage) {
    if (currentSection != indexPage) {
      _pageController.jumpToPage(indexPage);
      currentSection = indexPage;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const TopBar(),
            SectionNavBar(onSectionTap: changePage),
            Expanded(
              child: Center(
                child: PageView.builder(
                  pageSnapping: true,
                  itemCount: 5,
                  controller: _pageController,
                  itemBuilder: (context, index) {
                    return switch (index) {
                      1 => const AboutMePage(),
                      2 => const WorksPage(),
                      3 => const ProjectsPage(),
                      4 => const ContactPage(),
                      _ => Center(
                        child: Text(
                          'Home Content',
                          style: TextTheme.of(context).displayLarge,
                        ),
                      ),
                    };
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
