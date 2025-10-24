import 'package:flutter/material.dart';

final class AppPaddings {
  const AppPaddings._();

  // Standard padding values
  static const EdgeInsets small = EdgeInsets.all(8.0);
  static const EdgeInsets medium = EdgeInsets.all(16.0);
  static const EdgeInsets large = EdgeInsets.all(24.0);

  // Symmetric paddings
  static const EdgeInsets horizontalSmall = EdgeInsets.symmetric(horizontal: 8.0);
  static const EdgeInsets horizontalMedium = EdgeInsets.symmetric(horizontal: 16.0);
  static const EdgeInsets horizontalLarge = EdgeInsets.symmetric(horizontal: 50.0);

  static const EdgeInsets verticalSmall = EdgeInsets.symmetric(vertical: 8.0);
  static const EdgeInsets verticalMedium = EdgeInsets.symmetric(vertical: 16.0);
  static const EdgeInsets verticalLarge = EdgeInsets.symmetric(vertical: 10.0);

  // Page paddings
  static const EdgeInsets page = EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0);

  // Card paddings
  static const EdgeInsets cardMargin = EdgeInsets.symmetric(
    horizontal: 16.0,
    vertical: 8.0,
  );
  static const EdgeInsets cardContent = EdgeInsets.all(16.0);
  static const EdgeInsets cardContentBottom = EdgeInsets.fromLTRB(16.0, 0, 16.0, 16.0);

  // List item paddings
  static const EdgeInsets listItem = EdgeInsets.all(8.5);

  // Section paddings
  static const EdgeInsets sectionContent = EdgeInsets.symmetric(
    vertical: 10.0,
    horizontal: 50.0,
  );
  static const EdgeInsets chipSpacing = EdgeInsets.symmetric(vertical: 2.0);
}
