import 'package:flutter/material.dart';

class SectionNavBar extends StatelessWidget {
  const SectionNavBar({super.key, required this.onSectionTap});

  final void Function(int index) onSectionTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(onTap: () => onSectionTap(1), child: const Text('Sobre Mi')),
          InkWell(onTap: () => onSectionTap(2), child: const Text('Trabajos')),
          InkWell(onTap: () => onSectionTap(3), child: const Text('Projectos')),
          InkWell(onTap: () => onSectionTap(3), child: const Text('Contacto')),
        ],
      ),
    );
  }
}
