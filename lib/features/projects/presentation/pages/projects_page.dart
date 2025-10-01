import 'package:flutter/material.dart';

class ProjectsPage extends StatefulWidget {
  const ProjectsPage({super.key});

  @override
  State<ProjectsPage> createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {
  final List<Map<String, String>> _items = [
    {'title': 'Card 001', 'subtitle': 'Date : 2025 - 05 - 20 => 2026 - 12 -01'},
    {'title': 'Card 002', 'subtitle': 'Date : 2025 - 05 - 20 => 2026 - 12 -01'},
    {'title': 'Card 003', 'subtitle': 'Date : 2025 - 05 - 20 => 2026 - 12 -01'},
    {'title': 'Card 004', 'subtitle': 'Date : 2025 - 05 - 20 => 2026 - 12 -01'},
  ];
  bool _isReady = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) setState(() => _isReady = true);
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 200),
      child: _isReady
          ? ListView.builder(
              key: const ValueKey('list'),
              cacheExtent: 200,
              itemCount: _items.length,
              itemBuilder: (context, index) {
                final item = _items[index];
                return ListTile(
                  contentPadding: const EdgeInsets.all(8.5),
                  leading: const Icon(Icons.pedal_bike, size: 30),
                  title: Text(item['title']!),
                  subtitle: Text(item['subtitle']!),
                  onTap: () {},
                );
              },
            )
          : const SizedBox.shrink(),
    );
  }
}
