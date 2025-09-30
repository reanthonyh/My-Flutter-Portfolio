import 'package:flutter/material.dart';
import 'package:my_portfolio/features/about_me/presentation/pages/about_me_page.dart';
import 'package:my_portfolio/features/contact/presentation/pages/contact_page.dart';
import 'package:my_portfolio/features/home/domain/entities/page_config.dart';
import 'package:my_portfolio/features/projects/presentation/pages/projects_page.dart';
import 'package:my_portfolio/features/work/presentation/pages/works_page.dart';

import '../widgets/home_content.dart';
import '../widgets/page_transition_overlay.dart';
import '../widgets/section_nav_bar.dart';
import '../widgets/top_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  int _currentSection = 0;
  late final PageController _pageController;
  late AnimationController _overlayController;
  bool _showOverlay = false;

  static const _pages = [
    PageConfig('Home', HomeContent()),
    PageConfig('About Me', AboutMePage()),
    PageConfig('Works', WorksPage()),
    PageConfig('Projects', ProjectsPage()),
    PageConfig('Contact', ContactPage()),
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _overlayController = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    );
  }

  void _changePage(int indexPage) async {
    if (_currentSection == indexPage) return;

    setState(() {
      _showOverlay = true;
      _currentSection = indexPage;
    });

    await _overlayController.animateTo(0.5);
    _pageController.jumpToPage(indexPage);

    await Future.delayed(Durations.long3);
    await _overlayController.forward();

    setState(() => _showOverlay = false);
    _overlayController.reset();
  }

  @override
  void dispose() {
    _overlayController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TopBar(goHomeContent: () => _changePage(0)),
            SectionNavBar(onSectionTap: _changePage),
            Expanded(
              child: Stack(
                children: [
                  PageView.builder(
                    controller: _pageController,
                    itemCount: _pages.length,
                    itemBuilder: (context, index) => Center(child: _pages[index].page),
                  ),
                  if (_showOverlay)
                    PageTransitionOverlay(
                      controller: _overlayController,
                      sectionName: _pages[_currentSection].name,
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
