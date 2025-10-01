import 'package:flutter/material.dart';
import 'package:my_portfolio/l10n/l10n.dart';

class AboutMePage extends StatelessWidget {
  const AboutMePage({super.key});

  @override
  Widget build(BuildContext context) {
    final intl = AppLocalizations.of(context)!;
    final textTheme = TextTheme.of(context);

    return ListView(
      key: const ValueKey('AboutMe'),
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
      children: [
        SizedBox(height: 85, child: Text(intl.about_me, style: textTheme.displaySmall)),
        const SizedBox(height: 15),

        SizedBox(
          height: 250,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
            child: Row(
              children: [
                Flexible(
                  flex: 4,
                  fit: FlexFit.tight,
                  child: Column(
                    spacing: 4,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Anthony Hernandez Flores', style: textTheme.displayMedium),
                      Text(intl.me_description, style: textTheme.titleLarge),
                    ],
                  ),
                ),
                const Flexible(flex: 2, child: Center(child: FlutterLogo(size: 80))),
              ],
            ),
          ),
        ),

        const SizedBox(height: 12),
        SizedBox(height: 90, child: Text('Sobre Mi', style: textTheme.headlineMedium)),
        const SizedBox(height: 20),

        Text('Sobre Mi', style: textTheme.bodyLarge),
        Text('Sobre Mi', style: textTheme.bodyMedium),

        const SizedBox(height: 20),

        Text(intl.links, style: textTheme.labelMedium),
      ],
    );
  }
}
