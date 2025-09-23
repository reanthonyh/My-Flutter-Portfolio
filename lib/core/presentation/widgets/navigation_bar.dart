import 'package:flutter/material.dart';

class NavigationBar extends StatelessWidget {
  final int currentSection;
  final Function(int) onSectionChanged;

  const NavigationBar({
    super.key,
    required this.currentSection,
    required this.onSectionChanged,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Row(
        children: [
          _buildNavItem('Section 1', 0),
          _buildNavItem('Section 2', 1),
          _buildNavItem('Section 3', 2),
          _buildNavItem('Section 4', 3),
        ],
      ),
    );
  }

  Widget _buildNavItem(String title, int index) => Expanded(
    child: GestureDetector(onTap: () => onSectionChanged(index), child: Text(title)),
  );
}
