// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../account.cg.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AccountDto {

@JsonKey(name: 'rechargeUserEntity') RechargeUserDto? get rechargeUserEntity;@JsonKey(name: 'accessJwt') String? get accessJwt;@JsonKey(name: 'refreshJwt') String? get refreshJwt;
/// Create a copy of AccountDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AccountDtoCopyWith<AccountDto> get copyWith => _$AccountDtoCopyWithImpl<AccountDto>(this as AccountDto, _$identity);

  /// Serializes this AccountDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AccountDto&&(identical(other.rechargeUserEntity, rechargeUserEntity) || other.rechargeUserEntity == rechargeUserEntity)&&(identical(other.accessJwt, accessJwt) || other.accessJwt == accessJwt)&&(identical(other.refreshJwt, refreshJwt) || other.refreshJwt == refreshJwt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,rechargeUserEntity,accessJwt,refreshJwt);

@override
String toString() {
  return 'AccountDto(rechargeUserEntity: $rechargeUserEntity, accessJwt: $accessJwt, refreshJwt: $refreshJwt)';
}


}

/// @nodoc
abstract mixin class $AccountDtoCopyWith<$Res>  {
  factory $AccountDtoCopyWith(AccountDto value, $Res Function(AccountDto) _then) = _$AccountDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'rechargeUserEntity') RechargeUserDto? rechargeUserEntity,@JsonKey(name: 'accessJwt') String? accessJwt,@JsonKey(name: 'refreshJwt') String? refreshJwt
});


$RechargeUserDtoCopyWith<$Res>? get rechargeUserEntity;

}
/// @nodoc
class _$AccountDtoCopyWithImpl<$Res>
    implements $AccountDtoCopyWith<$Res> {
  _$AccountDtoCopyWithImpl(this._self, this._then);

  final AccountDto _self;
  final $Res Function(AccountDto) _then;

/// Create a copy of AccountDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? rechargeUserEntity = freezed,Object? accessJwt = freezed,Object? refreshJwt = freezed,}) {
  return _then(_self.copyWith(
rechargeUserEntity: freezed == rechargeUserEntity ? _self.rechargeUserEntity : rechargeUserEntity // ignore: cast_nullable_to_non_nullable
as RechargeUserDto?,accessJwt: freezed == accessJwt ? _self.accessJwt : accessJwt // ignore: cast_nullable_to_non_nullable
as String?,refreshJwt: freezed == refreshJwt ? _self.refreshJwt : refreshJwt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of AccountDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RechargeUserDtoCopyWith<$Res>? get rechargeUserEntity {
    if (_self.rechargeUserEntity == null) {
    return null;
  }

  return $RechargeUserDtoCopyWith<$Res>(_self.rechargeUserEntity!, (value) {
    return _then(_self.copyWith(rechargeUserEntity: value));
  });
}
}


/// Adds pattern-matching-related methods to [AccountDto].
extension AccountDtoPatterns on AccountDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AccountDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AccountDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AccountDto value)  $default,){
final _that = this;
switch (_that) {
case _AccountDto():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AccountDto value)?  $default,){
final _that = this;
switch (_that) {
case _AccountDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'rechargeUserEntity')  RechargeUserDto? rechargeUserEntity, @JsonKey(name: 'accessJwt')  String? accessJwt, @JsonKey(name: 'refreshJwt')  String? refreshJwt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AccountDto() when $default != null:
return $default(_that.rechargeUserEntity,_that.accessJwt,_that.refreshJwt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'rechargeUserEntity')  RechargeUserDto? rechargeUserEntity, @JsonKey(name: 'accessJwt')  String? accessJwt, @JsonKey(name: 'refreshJwt')  String? refreshJwt)  $default,) {final _that = this;
switch (_that) {
case _AccountDto():
return $default(_that.rechargeUserEntity,_that.accessJwt,_that.refreshJwt);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'rechargeUserEntity')  RechargeUserDto? rechargeUserEntity, @JsonKey(name: 'accessJwt')  String? accessJwt, @JsonKey(name: 'refreshJwt')  String? refreshJwt)?  $default,) {final _that = this;
switch (_that) {
case _AccountDto() when $default != null:
return $default(_that.rechargeUserEntity,_that.accessJwt,_that.refreshJwt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AccountDto extends AccountDto {
  const _AccountDto({@JsonKey(name: 'rechargeUserEntity') this.rechargeUserEntity, @JsonKey(name: 'accessJwt') this.accessJwt, @JsonKey(name: 'refreshJwt') this.refreshJwt}): super._();
  factory _AccountDto.fromJson(Map<String, dynamic> json) => _$AccountDtoFromJson(json);

@override@JsonKey(name: 'rechargeUserEntity') final  RechargeUserDto? rechargeUserEntity;
@override@JsonKey(name: 'accessJwt') final  String? accessJwt;
@override@JsonKey(name: 'refreshJwt') final  String? refreshJwt;

/// Create a copy of AccountDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AccountDtoCopyWith<_AccountDto> get copyWith => __$AccountDtoCopyWithImpl<_AccountDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AccountDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AccountDto&&(identical(other.rechargeUserEntity, rechargeUserEntity) || other.rechargeUserEntity == rechargeUserEntity)&&(identical(other.accessJwt, accessJwt) || other.accessJwt == accessJwt)&&(identical(other.refreshJwt, refreshJwt) || other.refreshJwt == refreshJwt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,rechargeUserEntity,accessJwt,refreshJwt);

@override
String toString() {
  return 'AccountDto(rechargeUserEntity: $rechargeUserEntity, accessJwt: $accessJwt, refreshJwt: $refreshJwt)';
}


}

/// @nodoc
abstract mixin class _$AccountDtoCopyWith<$Res> implements $AccountDtoCopyWith<$Res> {
  factory _$AccountDtoCopyWith(_AccountDto value, $Res Function(_AccountDto) _then) = __$AccountDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'rechargeUserEntity') RechargeUserDto? rechargeUserEntity,@JsonKey(name: 'accessJwt') String? accessJwt,@JsonKey(name: 'refreshJwt') String? refreshJwt
});


@override $RechargeUserDtoCopyWith<$Res>? get rechargeUserEntity;

}
/// @nodoc
class __$AccountDtoCopyWithImpl<$Res>
    implements _$AccountDtoCopyWith<$Res> {
  __$AccountDtoCopyWithImpl(this._self, this._then);

  final _AccountDto _self;
  final $Res Function(_AccountDto) _then;

/// Create a copy of AccountDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? rechargeUserEntity = freezed,Object? accessJwt = freezed,Object? refreshJwt = freezed,}) {
  return _then(_AccountDto(
rechargeUserEntity: freezed == rechargeUserEntity ? _self.rechargeUserEntity : rechargeUserEntity // ignore: cast_nullable_to_non_nullable
as RechargeUserDto?,accessJwt: freezed == accessJwt ? _self.accessJwt : accessJwt // ignore: cast_nullable_to_non_nullable
as String?,refreshJwt: freezed == refreshJwt ? _self.refreshJwt : refreshJwt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of AccountDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RechargeUserDtoCopyWith<$Res>? get rechargeUserEntity {
    if (_self.rechargeUserEntity == null) {
    return null;
  }

  return $RechargeUserDtoCopyWith<$Res>(_self.rechargeUserEntity!, (value) {
    return _then(_self.copyWith(rechargeUserEntity: value));
  });
}
}


/// @nodoc
mixin _$RechargeUserDto {

 String? get id; String? get phone;@JsonKey(name: 'authType') String? get authType;@JsonKey(name: 'firstName') String? get firstName;@JsonKey(name: 'lastName') String? get lastName; String? get email;@JsonKey(name: 'createdAt') String? get createdAt;@JsonKey(name: 'updatedAt') String? get updatedAt;@JsonKey(name: 'braintreeCustomerId') String? get braintreeCustomerId; bool? get blocked;
/// Create a copy of RechargeUserDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RechargeUserDtoCopyWith<RechargeUserDto> get copyWith => _$RechargeUserDtoCopyWithImpl<RechargeUserDto>(this as RechargeUserDto, _$identity);

  /// Serializes this RechargeUserDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RechargeUserDto&&(identical(other.id, id) || other.id == id)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.authType, authType) || other.authType == authType)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.email, email) || other.email == email)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.braintreeCustomerId, braintreeCustomerId) || other.braintreeCustomerId == braintreeCustomerId)&&(identical(other.blocked, blocked) || other.blocked == blocked));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,phone,authType,firstName,lastName,email,createdAt,updatedAt,braintreeCustomerId,blocked);

@override
String toString() {
  return 'RechargeUserDto(id: $id, phone: $phone, authType: $authType, firstName: $firstName, lastName: $lastName, email: $email, createdAt: $createdAt, updatedAt: $updatedAt, braintreeCustomerId: $braintreeCustomerId, blocked: $blocked)';
}


}

/// @nodoc
abstract mixin class $RechargeUserDtoCopyWith<$Res>  {
  factory $RechargeUserDtoCopyWith(RechargeUserDto value, $Res Function(RechargeUserDto) _then) = _$RechargeUserDtoCopyWithImpl;
@useResult
$Res call({
 String? id, String? phone,@JsonKey(name: 'authType') String? authType,@JsonKey(name: 'firstName') String? firstName,@JsonKey(name: 'lastName') String? lastName, String? email,@JsonKey(name: 'createdAt') String? createdAt,@JsonKey(name: 'updatedAt') String? updatedAt,@JsonKey(name: 'braintreeCustomerId') String? braintreeCustomerId, bool? blocked
});




}
/// @nodoc
class _$RechargeUserDtoCopyWithImpl<$Res>
    implements $RechargeUserDtoCopyWith<$Res> {
  _$RechargeUserDtoCopyWithImpl(this._self, this._then);

  final RechargeUserDto _self;
  final $Res Function(RechargeUserDto) _then;

/// Create a copy of RechargeUserDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? phone = freezed,Object? authType = freezed,Object? firstName = freezed,Object? lastName = freezed,Object? email = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? braintreeCustomerId = freezed,Object? blocked = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,authType: freezed == authType ? _self.authType : authType // ignore: cast_nullable_to_non_nullable
as String?,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,braintreeCustomerId: freezed == braintreeCustomerId ? _self.braintreeCustomerId : braintreeCustomerId // ignore: cast_nullable_to_non_nullable
as String?,blocked: freezed == blocked ? _self.blocked : blocked // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [RechargeUserDto].
extension RechargeUserDtoPatterns on RechargeUserDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RechargeUserDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RechargeUserDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RechargeUserDto value)  $default,){
final _that = this;
switch (_that) {
case _RechargeUserDto():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RechargeUserDto value)?  $default,){
final _that = this;
switch (_that) {
case _RechargeUserDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? phone, @JsonKey(name: 'authType')  String? authType, @JsonKey(name: 'firstName')  String? firstName, @JsonKey(name: 'lastName')  String? lastName,  String? email, @JsonKey(name: 'createdAt')  String? createdAt, @JsonKey(name: 'updatedAt')  String? updatedAt, @JsonKey(name: 'braintreeCustomerId')  String? braintreeCustomerId,  bool? blocked)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RechargeUserDto() when $default != null:
return $default(_that.id,_that.phone,_that.authType,_that.firstName,_that.lastName,_that.email,_that.createdAt,_that.updatedAt,_that.braintreeCustomerId,_that.blocked);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? phone, @JsonKey(name: 'authType')  String? authType, @JsonKey(name: 'firstName')  String? firstName, @JsonKey(name: 'lastName')  String? lastName,  String? email, @JsonKey(name: 'createdAt')  String? createdAt, @JsonKey(name: 'updatedAt')  String? updatedAt, @JsonKey(name: 'braintreeCustomerId')  String? braintreeCustomerId,  bool? blocked)  $default,) {final _that = this;
switch (_that) {
case _RechargeUserDto():
return $default(_that.id,_that.phone,_that.authType,_that.firstName,_that.lastName,_that.email,_that.createdAt,_that.updatedAt,_that.braintreeCustomerId,_that.blocked);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? phone, @JsonKey(name: 'authType')  String? authType, @JsonKey(name: 'firstName')  String? firstName, @JsonKey(name: 'lastName')  String? lastName,  String? email, @JsonKey(name: 'createdAt')  String? createdAt, @JsonKey(name: 'updatedAt')  String? updatedAt, @JsonKey(name: 'braintreeCustomerId')  String? braintreeCustomerId,  bool? blocked)?  $default,) {final _that = this;
switch (_that) {
case _RechargeUserDto() when $default != null:
return $default(_that.id,_that.phone,_that.authType,_that.firstName,_that.lastName,_that.email,_that.createdAt,_that.updatedAt,_that.braintreeCustomerId,_that.blocked);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RechargeUserDto extends RechargeUserDto {
  const _RechargeUserDto({this.id, this.phone, @JsonKey(name: 'authType') this.authType, @JsonKey(name: 'firstName') this.firstName, @JsonKey(name: 'lastName') this.lastName, this.email, @JsonKey(name: 'createdAt') this.createdAt, @JsonKey(name: 'updatedAt') this.updatedAt, @JsonKey(name: 'braintreeCustomerId') this.braintreeCustomerId, this.blocked}): super._();
  factory _RechargeUserDto.fromJson(Map<String, dynamic> json) => _$RechargeUserDtoFromJson(json);

@override final  String? id;
@override final  String? phone;
@override@JsonKey(name: 'authType') final  String? authType;
@override@JsonKey(name: 'firstName') final  String? firstName;
@override@JsonKey(name: 'lastName') final  String? lastName;
@override final  String? email;
@override@JsonKey(name: 'createdAt') final  String? createdAt;
@override@JsonKey(name: 'updatedAt') final  String? updatedAt;
@override@JsonKey(name: 'braintreeCustomerId') final  String? braintreeCustomerId;
@override final  bool? blocked;

/// Create a copy of RechargeUserDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RechargeUserDtoCopyWith<_RechargeUserDto> get copyWith => __$RechargeUserDtoCopyWithImpl<_RechargeUserDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RechargeUserDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RechargeUserDto&&(identical(other.id, id) || other.id == id)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.authType, authType) || other.authType == authType)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.email, email) || other.email == email)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.braintreeCustomerId, braintreeCustomerId) || other.braintreeCustomerId == braintreeCustomerId)&&(identical(other.blocked, blocked) || other.blocked == blocked));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,phone,authType,firstName,lastName,email,createdAt,updatedAt,braintreeCustomerId,blocked);

@override
String toString() {
  return 'RechargeUserDto(id: $id, phone: $phone, authType: $authType, firstName: $firstName, lastName: $lastName, email: $email, createdAt: $createdAt, updatedAt: $updatedAt, braintreeCustomerId: $braintreeCustomerId, blocked: $blocked)';
}


}

/// @nodoc
abstract mixin class _$RechargeUserDtoCopyWith<$Res> implements $RechargeUserDtoCopyWith<$Res> {
  factory _$RechargeUserDtoCopyWith(_RechargeUserDto value, $Res Function(_RechargeUserDto) _then) = __$RechargeUserDtoCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? phone,@JsonKey(name: 'authType') String? authType,@JsonKey(name: 'firstName') String? firstName,@JsonKey(name: 'lastName') String? lastName, String? email,@JsonKey(name: 'createdAt') String? createdAt,@JsonKey(name: 'updatedAt') String? updatedAt,@JsonKey(name: 'braintreeCustomerId') String? braintreeCustomerId, bool? blocked
});




}
/// @nodoc
class __$RechargeUserDtoCopyWithImpl<$Res>
    implements _$RechargeUserDtoCopyWith<$Res> {
  __$RechargeUserDtoCopyWithImpl(this._self, this._then);

  final _RechargeUserDto _self;
  final $Res Function(_RechargeUserDto) _then;

/// Create a copy of RechargeUserDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? phone = freezed,Object? authType = freezed,Object? firstName = freezed,Object? lastName = freezed,Object? email = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? braintreeCustomerId = freezed,Object? blocked = freezed,}) {
  return _then(_RechargeUserDto(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,authType: freezed == authType ? _self.authType : authType // ignore: cast_nullable_to_non_nullable
as String?,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,braintreeCustomerId: freezed == braintreeCustomerId ? _self.braintreeCustomerId : braintreeCustomerId // ignore: cast_nullable_to_non_nullable
as String?,blocked: freezed == blocked ? _self.blocked : blocked // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
