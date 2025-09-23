import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 100,
      child: Row(
        children: [
          Expanded(
            child: Row(
              children: [
                Icon(Icons.circle, color: Colors.green),
                Expanded(child: Text('Disponible para trabjar', maxLines: 2)),
              ],
            ),
          ),
          Expanded(flex: 3, child: FlutterLogo(size: 80)),
          Expanded(
            child: Column(
              children: [
                Text('Porfolio', textAlign: TextAlign.end),
                Text('2025', textAlign: TextAlign.end),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
