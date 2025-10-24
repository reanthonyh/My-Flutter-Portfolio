import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_portfolio/core/extensions/date_time_extensions.dart';

part 'work.freezed.dart';

@freezed
abstract class Work with _$Work {
  const Work._();

  const factory Work({
    String? id,
    required String title,
    required String company,
    required DateTime start,
    DateTime? end,
    required String description,
    List<String>? projects,
    List<String>? imageUrls,
    List<String>? technologies,
  }) = _Work;

  String get formatDateRange => start.formatDateRange(end);

  bool get hasImages => imageUrls?.isNotEmpty ?? false;

  bool get hasProjects => projects?.isNotEmpty ?? false;

  bool get hasTechnologies => technologies?.isNotEmpty ?? false;
}
