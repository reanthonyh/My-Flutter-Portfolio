import 'package:freezed_annotation/freezed_annotation.dart';

part 'work.freezed.dart';

@freezed
abstract class Work with _$Work {
  const factory Work({
    String? id,
    required String title,
    required String company,
    required DateTime start,
    DateTime? end,
    // List Projects
  }) = _Work;
}
