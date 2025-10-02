import 'package:flutter/material.dart';
import 'package:my_portfolio/features/work/domain/entities/work.dart';
import 'package:my_portfolio/features/work/presentation/widgets/work_card.dart';
import 'package:my_portfolio/l10n/l10n.dart';

class WorksPage extends StatelessWidget {
  const WorksPage({super.key});

  // Sample work data - in a real app, this would come from a repository/bloc
  List<Work> get _sampleWorks => [
    Work(
      id: '1',
      title: 'Senior Flutter Developer',
      company: 'Tech Innovations Inc.',
      start: DateTime(2022, 6),
      end: null, // Current job
      description:
          'Leading mobile application development using Flutter framework. Responsible for architecting scalable solutions, mentoring junior developers, and implementing best practices for clean code and testing.',
      technologies: ['Flutter', 'Dart', 'Firebase', 'REST APIs', 'BLoC', 'Git', 'CI/CD'],
      projects: [
        'Developed a cross-platform e-commerce app with 50k+ downloads',
        'Implemented real-time chat functionality using WebSocket',
        'Led migration from native Android to Flutter, reducing development time by 40%',
        'Created reusable component library used across 5 different projects',
      ],
      imageUrls: [
        'https://media.istockphoto.com/id/517188688/photo/mountain-landscape.jpg?s=1024x1024&w=0&k=20&c=z8_rWaI8x4zApNEEG9DnWlGXyDIXe-OmsAyQ5fGPVV8=',
        'https://media.istockphoto.com/id/814423752/photo/eye-of-model-with-colorful-art-make-up-close-up.jpg?s=612x612&w=0&k=20&c=l15OdMWjgCKycMMShP8UK94ELVlEGvt7GmB_esHWPYE=',
        'https://cdn.pixabay.com/photo/2018/08/04/11/30/draw-3583548_1280.png',
      ],
    ),
    Work(
      id: '2',
      title: 'Full Stack Developer',
      company: 'Digital Solutions LLC',
      start: DateTime(2020, 3),
      end: DateTime(2022, 5),
      description:
          'Developed and maintained web applications using React and Node.js. Worked closely with UI/UX designers to implement responsive and accessible user interfaces.',
      technologies: [
        'React',
        'TypeScript',
        'Node.js',
        'MongoDB',
        'Express.js',
        'AWS',
        'Docker',
      ],
      projects: [
        'Built a customer management system serving 10k+ users',
        'Optimized database queries, improving performance by 60%',
        'Implemented OAuth 2.0 authentication system',
        'Created automated testing suite with 90% code coverage',
      ],
      imageUrls: [
        'https://media.istockphoto.com/id/522188889/photo/girl-colorful-and-natural-rainbow-eye-on-white-background.jpg?s=612x612&w=0&k=20&c=YFFYKiC5YYejxP2IeyyTau25bogDMriWf1dl0dW3ud8=',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7X8sseBG9LssIyDQBAmaWZrQPJix90lv3AA&s',
      ],
    ),
    Work(
      id: '3',
      title: 'Mobile App Developer',
      company: 'StartupXYZ',
      start: DateTime(2018, 8),
      end: DateTime(2020, 2),
      description:
          'Specialized in native Android development, creating consumer-facing applications with focus on performance and user experience.',
      technologies: [
        'Android',
        'Java',
        'Kotlin',
        'SQLite',
        'Retrofit',
        'MVVM',
        'Material Design',
      ],
      projects: [
        'Launched fitness tracking app with 25k+ active users',
        'Integrated third-party APIs for payment processing',
        'Implemented offline-first architecture for better UX',
        'Reduced app crash rate from 2.1% to 0.3%',
      ],
      imageUrls: [
        'https://media.istockphoto.com/id/517188688/photo/mountain-landscape.jpg?s=1024x1024&w=0&k=20&c=z8_rWaI8x4zApNEEG9DnWlGXyDIXe-OmsAyQ5fGPVV8=',
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final intl = AppLocalizations.of(context)!;

    final colorScheme = ColorScheme.of(context);
    final textTheme = TextTheme.of(context);

    return CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 120,
          floating: false,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
            title: Text(
              intl.works,
              style: textTheme.headlineMedium?.copyWith(
                color: colorScheme.onPrimaryContainer,
                fontWeight: FontWeight.bold,
              ),
            ),
            centerTitle: true,
          ),
          backgroundColor: colorScheme.primaryContainer,
        ),
        SliverPadding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              final work = _sampleWorks[index];

              return WorkCard(work: work);
            }, childCount: _sampleWorks.length),
          ),
        ),
      ],
    );
  }
}
