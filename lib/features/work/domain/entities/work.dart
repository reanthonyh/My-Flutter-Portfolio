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
    required String description,
    @Default([]) List<String> projects,
    @Default([]) List<String> imageUrls,
    @Default([]) List<String> technologies,
  }) = _Work;
}
