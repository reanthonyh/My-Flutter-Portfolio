import 'package:flutter/material.dart';
import 'package:my_portfolio/core/extensions/date_time_extensions.dart';
import 'package:my_portfolio/core/presentation/widgets/slider.dart';
import 'package:my_portfolio/features/work/domain/entities/work.dart';

class WorkCard extends StatefulWidget {
  const WorkCard({super.key, required this.work});

  final Work work;

  @override
  State<WorkCard> createState() => _WorkCardState();
}

class _WorkCardState extends State<WorkCard> with SingleTickerProviderStateMixin {
  bool _isExpanded = false;
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
  }

  void _toggle() {
    setState(() {
      _isExpanded = !_isExpanded;
      _isExpanded ? _controller.forward() : _controller.reverse();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      elevation: 2,
      child: InkWell(
        onTap: _toggle,
        borderRadius: BorderRadius.circular(12),
        child: Column(
          children: [
            _WorkCardHeader(work: widget.work, isExpanded: _isExpanded),
            SizeTransition(
              sizeFactor: CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
              child: _WorkCardContent(work: widget.work),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

class _WorkCardHeader extends StatelessWidget {
  const _WorkCardHeader({required this.work, required this.isExpanded});

  final Work work;
  final bool isExpanded;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  work.title,
                  style: theme.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  work.company,
                  style: theme.textTheme.titleMedium?.copyWith(
                    color: theme.colorScheme.primary,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  work.start.formatDateRange(work.end),
                  style: theme.textTheme.bodyMedium?.copyWith(color: Colors.grey[600]),
                ),
              ],
            ),
          ),
          Icon(
            isExpanded ? Icons.expand_less : Icons.expand_more,
            color: theme.colorScheme.primary,
          ),
        ],
      ),
    );
  }
}

class _WorkCardContent extends StatelessWidget {
  const _WorkCardContent({required this.work});

  final Work work;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Divider(),
          Text(work.description, style: theme.textTheme.bodyMedium),

          if (work.technologies.isNotEmpty)
            _WorkSection(
              title: 'Technologies:',
              content: Wrap(
                spacing: 8,
                runSpacing: 4,
                children: work.technologies
                    .map(
                      (tech) => Chip(
                        label: Text(tech, style: const TextStyle(fontSize: 12)),
                        backgroundColor: theme.colorScheme.primaryContainer,
                      ),
                    )
                    .toList(),
              ),
            ),
          if (work.projects.isNotEmpty)
            _WorkSection(
              title: 'Key Projects:',
              content: Column(
                children: work.projects
                    .map(
                      (project) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 2),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('• '),
                            Expanded(child: Text(project)),
                          ],
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          if (work.imageUrls.isNotEmpty)
            _WorkSection(
              title: 'Gallery:',
              content: SizedBox(
                height: 200,
                child: ImageNetworkSlider(height: 200, imageUrls: work.imageUrls),
              ),
            ),
        ],
      ),
    );
  }
}

class _WorkSection extends StatelessWidget {
  const _WorkSection({required this.title, required this.content});

  final String title;
  final Widget content;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      spacing: 8,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 8),
        Text(
          title,
          style: theme.textTheme.titleSmall?.copyWith(fontWeight: FontWeight.bold),
        ),
        content,
      ],
    );
  }
}
