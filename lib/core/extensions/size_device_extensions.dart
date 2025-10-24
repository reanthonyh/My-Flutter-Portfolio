import 'package:flutter/rendering.dart';

extension DeviceSizeExtension on Size {
  bool get isNarrow => width < 800;
  bool get isWider => width >= 1500;
}
