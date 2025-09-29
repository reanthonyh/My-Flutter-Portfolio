import 'package:flutter/material.dart';

class AboutMePage extends StatelessWidget {
  const AboutMePage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = TextTheme.of(context);

    return ListView(
      key: const ValueKey('AboutMe'),
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
      children: [
        SizedBox(height: 85, child: Text("Sobre Mi", style: textTheme.titleLarge)),
        const SizedBox(height: 20),

        SizedBox(
          height: 250,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(
                flex: 4,
                fit: FlexFit.tight,
                child: Text("Sobre Mi", style: textTheme.displayMedium),
              ),
              const Flexible(flex: 2, child: FlutterLogo(size: 80)),
            ],
          ),
        ),
        SizedBox(height: 90, child: Text("Sobre Mi", style: textTheme.headlineMedium)),

        const SizedBox(height: 20),

        Text("Sobre Mi", style: textTheme.bodyLarge),
        Text("Sobre Mi", style: textTheme.bodyMedium),

        const SizedBox(height: 20),

        Text("Sobre Mi", style: textTheme.labelMedium),
      ],
    );
  }
}
