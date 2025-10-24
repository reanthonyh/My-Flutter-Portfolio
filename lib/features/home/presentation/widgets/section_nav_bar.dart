import 'package:flutter/material.dart';
import 'package:my_portfolio/l10n/l10n.dart';

class SectionNavBar extends StatelessWidget {
  const SectionNavBar({super.key, required this.onSectionTap});

  final void Function(int index) onSectionTap;

  @override
  Widget build(BuildContext context) {
    final intl = AppLocalizations.of(context)!;

    return SizedBox(
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(onTap: () => onSectionTap(1), child: Text(intl.about_me)),
          InkWell(onTap: () => onSectionTap(2), child: Text(intl.works)),
          InkWell(onTap: () => onSectionTap(3), child: Text(intl.projects)),
          InkWell(onTap: () => onSectionTap(4), child: Text(intl.contact)),
        ],
      ),
    );
  }
}
