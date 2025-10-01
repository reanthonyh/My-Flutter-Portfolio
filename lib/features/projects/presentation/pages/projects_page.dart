import 'package:flutter/material.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  Future<List<Map<String, String>>> _loadProjects() async {
    await Future.delayed(Durations.short3);
    return [
      {'title': 'Card 001', 'subtitle': 'Date : 2021 - 05 - 20 => 2022 - 12 -01'},
      {'title': 'Card 002', 'subtitle': 'Date : 2022 - 05 - 21 => 2023 - 12 -01'},
      {'title': 'Card 003', 'subtitle': 'Date : 2024 - 05 - 23 => 2024 - 12 -01'},
      {'title': 'Card 004', 'subtitle': 'Date : 2025 - 05 - 20 => 2026 - 12 -01'},
    ];
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Map<String, String>>>(
      future: _loadProjects(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const SizedBox.shrink();
        }

        return ListView.builder(
          cacheExtent: 200,
          itemCount: snapshot.data!.length,
          itemBuilder: (context, index) {
            final item = snapshot.data![index];
            return ListTile(
              contentPadding: const EdgeInsets.all(8.5),
              leading: const Icon(Icons.pedal_bike, size: 30),
              title: Text(item['title']!),
              subtitle: Text(item['subtitle']!),
              onFocusChange: (value) {
                debugPrint("Focus - ${item['title']} -> $value");
              },
              onTap: () {},
            );
          },
        );
      },
    );
  }
}
