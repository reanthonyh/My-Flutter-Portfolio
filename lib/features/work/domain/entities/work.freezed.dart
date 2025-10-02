// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'work.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Work {

 String? get id; String get title; String get company; DateTime get start; DateTime? get end; String get description; List<String> get projects; List<String> get imageUrls; List<String> get technologies;
/// Create a copy of Work
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WorkCopyWith<Work> get copyWith => _$WorkCopyWithImpl<Work>(this as Work, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Work&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.company, company) || other.company == company)&&(identical(other.start, start) || other.start == start)&&(identical(other.end, end) || other.end == end)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.projects, projects)&&const DeepCollectionEquality().equals(other.imageUrls, imageUrls)&&const DeepCollectionEquality().equals(other.technologies, technologies));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,company,start,end,description,const DeepCollectionEquality().hash(projects),const DeepCollectionEquality().hash(imageUrls),const DeepCollectionEquality().hash(technologies));

@override
String toString() {
  return 'Work(id: $id, title: $title, company: $company, start: $start, end: $end, description: $description, projects: $projects, imageUrls: $imageUrls, technologies: $technologies)';
}


}

/// @nodoc
abstract mixin class $WorkCopyWith<$Res>  {
  factory $WorkCopyWith(Work value, $Res Function(Work) _then) = _$WorkCopyWithImpl;
@useResult
$Res call({
 String? id, String title, String company, DateTime start, DateTime? end, String description, List<String> projects, List<String> imageUrls, List<String> technologies
});




}
/// @nodoc
class _$WorkCopyWithImpl<$Res>
    implements $WorkCopyWith<$Res> {
  _$WorkCopyWithImpl(this._self, this._then);

  final Work _self;
  final $Res Function(Work) _then;

/// Create a copy of Work
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? title = null,Object? company = null,Object? start = null,Object? end = freezed,Object? description = null,Object? projects = null,Object? imageUrls = null,Object? technologies = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,company: null == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as String,start: null == start ? _self.start : start // ignore: cast_nullable_to_non_nullable
as DateTime,end: freezed == end ? _self.end : end // ignore: cast_nullable_to_non_nullable
as DateTime?,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,projects: null == projects ? _self.projects : projects // ignore: cast_nullable_to_non_nullable
as List<String>,imageUrls: null == imageUrls ? _self.imageUrls : imageUrls // ignore: cast_nullable_to_non_nullable
as List<String>,technologies: null == technologies ? _self.technologies : technologies // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [Work].
extension WorkPatterns on Work {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Work value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Work() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Work value)  $default,){
final _that = this;
switch (_that) {
case _Work():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Work value)?  $default,){
final _that = this;
switch (_that) {
case _Work() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String title,  String company,  DateTime start,  DateTime? end,  String description,  List<String> projects,  List<String> imageUrls,  List<String> technologies)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Work() when $default != null:
return $default(_that.id,_that.title,_that.company,_that.start,_that.end,_that.description,_that.projects,_that.imageUrls,_that.technologies);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String title,  String company,  DateTime start,  DateTime? end,  String description,  List<String> projects,  List<String> imageUrls,  List<String> technologies)  $default,) {final _that = this;
switch (_that) {
case _Work():
return $default(_that.id,_that.title,_that.company,_that.start,_that.end,_that.description,_that.projects,_that.imageUrls,_that.technologies);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String title,  String company,  DateTime start,  DateTime? end,  String description,  List<String> projects,  List<String> imageUrls,  List<String> technologies)?  $default,) {final _that = this;
switch (_that) {
case _Work() when $default != null:
return $default(_that.id,_that.title,_that.company,_that.start,_that.end,_that.description,_that.projects,_that.imageUrls,_that.technologies);case _:
  return null;

}
}

}

/// @nodoc


class _Work implements Work {
  const _Work({this.id, required this.title, required this.company, required this.start, this.end, required this.description, final  List<String> projects = const [], final  List<String> imageUrls = const [], final  List<String> technologies = const []}): _projects = projects,_imageUrls = imageUrls,_technologies = technologies;
  

@override final  String? id;
@override final  String title;
@override final  String company;
@override final  DateTime start;
@override final  DateTime? end;
@override final  String description;
 final  List<String> _projects;
@override@JsonKey() List<String> get projects {
  if (_projects is EqualUnmodifiableListView) return _projects;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_projects);
}

 final  List<String> _imageUrls;
@override@JsonKey() List<String> get imageUrls {
  if (_imageUrls is EqualUnmodifiableListView) return _imageUrls;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_imageUrls);
}

 final  List<String> _technologies;
@override@JsonKey() List<String> get technologies {
  if (_technologies is EqualUnmodifiableListView) return _technologies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_technologies);
}


/// Create a copy of Work
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WorkCopyWith<_Work> get copyWith => __$WorkCopyWithImpl<_Work>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Work&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.company, company) || other.company == company)&&(identical(other.start, start) || other.start == start)&&(identical(other.end, end) || other.end == end)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._projects, _projects)&&const DeepCollectionEquality().equals(other._imageUrls, _imageUrls)&&const DeepCollectionEquality().equals(other._technologies, _technologies));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,company,start,end,description,const DeepCollectionEquality().hash(_projects),const DeepCollectionEquality().hash(_imageUrls),const DeepCollectionEquality().hash(_technologies));

@override
String toString() {
  return 'Work(id: $id, title: $title, company: $company, start: $start, end: $end, description: $description, projects: $projects, imageUrls: $imageUrls, technologies: $technologies)';
}


}

/// @nodoc
abstract mixin class _$WorkCopyWith<$Res> implements $WorkCopyWith<$Res> {
  factory _$WorkCopyWith(_Work value, $Res Function(_Work) _then) = __$WorkCopyWithImpl;
@override @useResult
$Res call({
 String? id, String title, String company, DateTime start, DateTime? end, String description, List<String> projects, List<String> imageUrls, List<String> technologies
});




}
/// @nodoc
class __$WorkCopyWithImpl<$Res>
    implements _$WorkCopyWith<$Res> {
  __$WorkCopyWithImpl(this._self, this._then);

  final _Work _self;
  final $Res Function(_Work) _then;

/// Create a copy of Work
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? title = null,Object? company = null,Object? start = null,Object? end = freezed,Object? description = null,Object? projects = null,Object? imageUrls = null,Object? technologies = null,}) {
  return _then(_Work(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,company: null == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as String,start: null == start ? _self.start : start // ignore: cast_nullable_to_non_nullable
as DateTime,end: freezed == end ? _self.end : end // ignore: cast_nullable_to_non_nullable
as DateTime?,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,projects: null == projects ? _self._projects : projects // ignore: cast_nullable_to_non_nullable
as List<String>,imageUrls: null == imageUrls ? _self._imageUrls : imageUrls // ignore: cast_nullable_to_non_nullable
as List<String>,technologies: null == technologies ? _self._technologies : technologies // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
