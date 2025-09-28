import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;

    debugPrint("Width : $width");

    final isWider = width > 1400;
    final isNarrow = width < 800;

    return SizedBox(
      height: 100,
      child: Row(
        children: [
          const Expanded(
            child: ColoredBox(
              color: Colors.red,
              child: Row(
                children: [
                  Icon(Icons.circle, color: Colors.green),
                  Expanded(child: Text('Disponible para trabjar', maxLines: 2)),
                ],
              ),
            ),
          ),
          Expanded(
            flex: isWider
                ? 3
                : isNarrow
                ? 2
                : 1,
            child: const FlutterLogo(size: 80),
          ),
          const Expanded(
            child: ColoredBox(
              color: Colors.blue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Porfolio', textAlign: TextAlign.end),
                  Text('2025', textAlign: TextAlign.end),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
