import 'package:flutter/material.dart';
import 'package:my_portfolio/core/constants/paddings.dart';
import 'package:my_portfolio/core/extensions/date_time_extensions.dart';
import 'package:my_portfolio/features/projects/domain/entities/project.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  Future<List<Project>> _loadProjects() async {
    await Future.delayed(Durations.short3);

    return [
      Project(
        id: '1',
        title: 'E-Commerce App',
        description: 'Full-stack mobile application with payment integration',
        startDate: DateTime(2021, 5, 20),
        endDate: DateTime(2022, 12, 1),
        technologies: ['Flutter', 'Firebase', 'Stripe'],
        features: ['User Authentication', 'Payment Processing', 'Real-time Chat'],
        githubUrl: 'https://github.com/example/ecommerce',
        liveUrl: 'https://ecommerce-demo.com',
      ),
      Project(
        id: '2',
        title: 'Task Management System',
        description: 'Collaborative project management tool with real-time updates',
        startDate: DateTime(2022, 5, 21),
        endDate: DateTime(2023, 12, 1),
        technologies: ['React', 'Node.js', 'MongoDB'],
        features: ['Team Collaboration', 'File Sharing', 'Progress Tracking'],
        githubUrl: 'https://github.com/example/taskmanager',
      ),
      Project(
        id: '3',
        title: 'AI-Powered Analytics Dashboard',
        description: 'Business intelligence platform with machine learning insights',
        startDate: DateTime(2024, 5, 23),
        endDate: DateTime(2024, 12, 1),
        technologies: ['Python', 'TensorFlow', 'React', 'PostgreSQL'],
        features: ['Predictive Analytics', 'Custom Reports', 'Data Visualization'],
        liveUrl: 'https://analytics-demo.com',
      ),
      Project(
        id: '4',
        title: 'IoT Smart Home Platform',
        description: 'Connected home automation system with mobile control',
        startDate: DateTime(2025, 5, 20),
        technologies: ['Flutter', 'Arduino', 'MQTT', 'AWS IoT'],
        features: ['Device Control', 'Energy Monitoring', 'Voice Commands'],
        githubUrl: 'https://github.com/example/smarthome',
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Project>>(
      future: _loadProjects(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const SizedBox.shrink();
        }

        return ListView.builder(
          cacheExtent: 200,
          itemCount: snapshot.data!.length,
          itemBuilder: (context, index) {
            final project = snapshot.data![index];

            return ListTile(
              contentPadding: AppPaddings.listItem,
              leading: const Icon(Icons.code, size: 30),
              title: Text(project.title),
              subtitle: Text(
                'Date: ${project.startDate.formatDateRange(project.endDate)}',
              ),
              // onTap: () {},
            );
          },
        );
      },
    );
  }
}
