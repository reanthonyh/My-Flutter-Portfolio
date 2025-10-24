// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Project {

 String get id; String get title; String get description; DateTime get startDate; DateTime? get endDate; List<String>? get technologies; List<String>? get features; List<String>? get imageUrls; String? get githubUrl; String? get liveUrl;
/// Create a copy of Project
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProjectCopyWith<Project> get copyWith => _$ProjectCopyWithImpl<Project>(this as Project, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Project&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&const DeepCollectionEquality().equals(other.technologies, technologies)&&const DeepCollectionEquality().equals(other.features, features)&&const DeepCollectionEquality().equals(other.imageUrls, imageUrls)&&(identical(other.githubUrl, githubUrl) || other.githubUrl == githubUrl)&&(identical(other.liveUrl, liveUrl) || other.liveUrl == liveUrl));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,description,startDate,endDate,const DeepCollectionEquality().hash(technologies),const DeepCollectionEquality().hash(features),const DeepCollectionEquality().hash(imageUrls),githubUrl,liveUrl);

@override
String toString() {
  return 'Project(id: $id, title: $title, description: $description, startDate: $startDate, endDate: $endDate, technologies: $technologies, features: $features, imageUrls: $imageUrls, githubUrl: $githubUrl, liveUrl: $liveUrl)';
}


}

/// @nodoc
abstract mixin class $ProjectCopyWith<$Res>  {
  factory $ProjectCopyWith(Project value, $Res Function(Project) _then) = _$ProjectCopyWithImpl;
@useResult
$Res call({
 String id, String title, String description, DateTime startDate, DateTime? endDate, List<String>? technologies, List<String>? features, List<String>? imageUrls, String? githubUrl, String? liveUrl
});




}
/// @nodoc
class _$ProjectCopyWithImpl<$Res>
    implements $ProjectCopyWith<$Res> {
  _$ProjectCopyWithImpl(this._self, this._then);

  final Project _self;
  final $Res Function(Project) _then;

/// Create a copy of Project
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? description = null,Object? startDate = null,Object? endDate = freezed,Object? technologies = freezed,Object? features = freezed,Object? imageUrls = freezed,Object? githubUrl = freezed,Object? liveUrl = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime?,technologies: freezed == technologies ? _self.technologies : technologies // ignore: cast_nullable_to_non_nullable
as List<String>?,features: freezed == features ? _self.features : features // ignore: cast_nullable_to_non_nullable
as List<String>?,imageUrls: freezed == imageUrls ? _self.imageUrls : imageUrls // ignore: cast_nullable_to_non_nullable
as List<String>?,githubUrl: freezed == githubUrl ? _self.githubUrl : githubUrl // ignore: cast_nullable_to_non_nullable
as String?,liveUrl: freezed == liveUrl ? _self.liveUrl : liveUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Project].
extension ProjectPatterns on Project {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Project value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Project() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Project value)  $default,){
final _that = this;
switch (_that) {
case _Project():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Project value)?  $default,){
final _that = this;
switch (_that) {
case _Project() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String description,  DateTime startDate,  DateTime? endDate,  List<String>? technologies,  List<String>? features,  List<String>? imageUrls,  String? githubUrl,  String? liveUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Project() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.startDate,_that.endDate,_that.technologies,_that.features,_that.imageUrls,_that.githubUrl,_that.liveUrl);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String description,  DateTime startDate,  DateTime? endDate,  List<String>? technologies,  List<String>? features,  List<String>? imageUrls,  String? githubUrl,  String? liveUrl)  $default,) {final _that = this;
switch (_that) {
case _Project():
return $default(_that.id,_that.title,_that.description,_that.startDate,_that.endDate,_that.technologies,_that.features,_that.imageUrls,_that.githubUrl,_that.liveUrl);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String description,  DateTime startDate,  DateTime? endDate,  List<String>? technologies,  List<String>? features,  List<String>? imageUrls,  String? githubUrl,  String? liveUrl)?  $default,) {final _that = this;
switch (_that) {
case _Project() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.startDate,_that.endDate,_that.technologies,_that.features,_that.imageUrls,_that.githubUrl,_that.liveUrl);case _:
  return null;

}
}

}

/// @nodoc


class _Project extends Project {
  const _Project({required this.id, required this.title, required this.description, required this.startDate, this.endDate, final  List<String>? technologies, final  List<String>? features, final  List<String>? imageUrls, this.githubUrl, this.liveUrl}): _technologies = technologies,_features = features,_imageUrls = imageUrls,super._();
  

@override final  String id;
@override final  String title;
@override final  String description;
@override final  DateTime startDate;
@override final  DateTime? endDate;
 final  List<String>? _technologies;
@override List<String>? get technologies {
  final value = _technologies;
  if (value == null) return null;
  if (_technologies is EqualUnmodifiableListView) return _technologies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String>? _features;
@override List<String>? get features {
  final value = _features;
  if (value == null) return null;
  if (_features is EqualUnmodifiableListView) return _features;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String>? _imageUrls;
@override List<String>? get imageUrls {
  final value = _imageUrls;
  if (value == null) return null;
  if (_imageUrls is EqualUnmodifiableListView) return _imageUrls;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? githubUrl;
@override final  String? liveUrl;

/// Create a copy of Project
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProjectCopyWith<_Project> get copyWith => __$ProjectCopyWithImpl<_Project>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Project&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&const DeepCollectionEquality().equals(other._technologies, _technologies)&&const DeepCollectionEquality().equals(other._features, _features)&&const DeepCollectionEquality().equals(other._imageUrls, _imageUrls)&&(identical(other.githubUrl, githubUrl) || other.githubUrl == githubUrl)&&(identical(other.liveUrl, liveUrl) || other.liveUrl == liveUrl));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,description,startDate,endDate,const DeepCollectionEquality().hash(_technologies),const DeepCollectionEquality().hash(_features),const DeepCollectionEquality().hash(_imageUrls),githubUrl,liveUrl);

@override
String toString() {
  return 'Project(id: $id, title: $title, description: $description, startDate: $startDate, endDate: $endDate, technologies: $technologies, features: $features, imageUrls: $imageUrls, githubUrl: $githubUrl, liveUrl: $liveUrl)';
}


}

/// @nodoc
abstract mixin class _$ProjectCopyWith<$Res> implements $ProjectCopyWith<$Res> {
  factory _$ProjectCopyWith(_Project value, $Res Function(_Project) _then) = __$ProjectCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String description, DateTime startDate, DateTime? endDate, List<String>? technologies, List<String>? features, List<String>? imageUrls, String? githubUrl, String? liveUrl
});




}
/// @nodoc
class __$ProjectCopyWithImpl<$Res>
    implements _$ProjectCopyWith<$Res> {
  __$ProjectCopyWithImpl(this._self, this._then);

  final _Project _self;
  final $Res Function(_Project) _then;

/// Create a copy of Project
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? description = null,Object? startDate = null,Object? endDate = freezed,Object? technologies = freezed,Object? features = freezed,Object? imageUrls = freezed,Object? githubUrl = freezed,Object? liveUrl = freezed,}) {
  return _then(_Project(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime?,technologies: freezed == technologies ? _self._technologies : technologies // ignore: cast_nullable_to_non_nullable
as List<String>?,features: freezed == features ? _self._features : features // ignore: cast_nullable_to_non_nullable
as List<String>?,imageUrls: freezed == imageUrls ? _self._imageUrls : imageUrls // ignore: cast_nullable_to_non_nullable
as List<String>?,githubUrl: freezed == githubUrl ? _self.githubUrl : githubUrl // ignore: cast_nullable_to_non_nullable
as String?,liveUrl: freezed == liveUrl ? _self.liveUrl : liveUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
