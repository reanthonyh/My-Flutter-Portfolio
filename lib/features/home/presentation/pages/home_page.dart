import 'package:flutter/material.dart';
import 'package:my_portfolio/features/about_me/presentation/pages/about_me_page.dart';
import 'package:my_portfolio/features/contact/presentation/pages/contact_page.dart';
import 'package:my_portfolio/features/projects/presentation/pages/projects_page.dart';
import 'package:my_portfolio/features/work/presentation/pages/works_page.dart';
import 'package:my_portfolio/l10n/l10n.dart';

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
  static const _pages = [
    HomeContent(),
    AboutMePage(),
    WorksPage(),
    ProjectsPage(),
    ContactPage(),
  ];

  int _currentSection = 0;
  bool _showOverlay = false;

  late final PageController _pageController;
  late AnimationController _overlayController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _overlayController = AnimationController(duration: Durations.extralong3, vsync: this);
  }

  void _changePage(int indexPage) async {
    if (_currentSection == indexPage) return;

    setState(() {
      _showOverlay = true;
      _currentSection = indexPage;
    });

    await _overlayController.animateTo(0.5);

    await Future.delayed(Durations.long1);

    _pageController.jumpToPage(indexPage);

    await _overlayController.forward();

    setState(() => _showOverlay = false);

    _overlayController.reset();
  }

  @override
  Widget build(BuildContext context) {
    final intl = AppLocalizations.of(context)!;
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
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: _pages.length,
                    itemBuilder: (context, index) =>
                        Center(child: _pages.elementAt(index)),
                  ),

                  if (_showOverlay)
                    PageTransitionOverlay(
                      controller: _overlayController,
                      sectionName: switch (_currentSection) {
                        1 => intl.about_me,
                        2 => intl.works,
                        3 => intl.projects,
                        4 => intl.contact,
                        _ => intl.home,
                      },
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _overlayController.dispose();
    super.dispose();
  }
}
