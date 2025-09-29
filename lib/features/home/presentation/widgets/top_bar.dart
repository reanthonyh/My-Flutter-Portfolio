import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key, required this.goHomeContent});

  final VoidCallback goHomeContent;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;

    final isWider = width > 1400;
    final isNarrow = width < 800;

    return SizedBox(
      height: 100,
      child: Row(
        children: [
          const Expanded(
            child: _Availability(
              // TODO: Replace the true value for a state provider
              isAvailable: true,
            ),
          ),
          Expanded(
            flex: isWider
                ? 3
                : isNarrow
                ? 2
                : 1,
            child: GestureDetector(
              onTap: goHomeContent,
              child: const FlutterLogo(size: 65),
            ),
          ),
          const Expanded(child: _FolioInfo()),
        ],
      ),
    );
  }
}

class _FolioInfo extends StatelessWidget {
  const _FolioInfo();

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text('Porfolio', textAlign: TextAlign.end),
        Text('2025', textAlign: TextAlign.end),
      ],
    );
  }
}

class _Availability extends StatelessWidget {
  const _Availability({required this.isAvailable});

  final bool isAvailable;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 4,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(Icons.circle, color: isAvailable ? Colors.green : Colors.red, size: 20),
        Expanded(
          child: Text(
            isAvailable ? 'Disponible para nuevos retos' : 'No disponible para trabajos',
            maxLines: 2,
          ),
        ),
      ],
    );
  }
}
