import 'package:freezed_annotation/freezed_annotation.dart';

part 'project.freezed.dart';

@freezed
abstract class Project with _$Project {
  const Project._();

  const factory Project({
    required String id,
    required String title,
    required String description,
    required DateTime startDate,
    DateTime? endDate,
    List<String>? technologies,
    List<String>? features,
    List<String>? imageUrls,
    String? githubUrl,
    String? liveUrl,
  }) = _Project;

  bool get isOngoing => endDate == null;
  bool get hasTechnologies => technologies?.isNotEmpty ?? false;
  bool get hasFeatures => features?.isNotEmpty ?? false;
  bool get hasImages => imageUrls?.isNotEmpty ?? false;
  bool get hasGithub => githubUrl?.isNotEmpty ?? false;
  bool get hasLiveDemo => liveUrl?.isNotEmpty ?? false;
}
