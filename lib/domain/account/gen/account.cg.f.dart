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
mixin _$Account {

 RechargeUser get rechargeUserEntity; String get accessJwt; String get refreshJwt;
/// Create a copy of Account
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AccountCopyWith<Account> get copyWith => _$AccountCopyWithImpl<Account>(this as Account, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Account&&(identical(other.rechargeUserEntity, rechargeUserEntity) || other.rechargeUserEntity == rechargeUserEntity)&&(identical(other.accessJwt, accessJwt) || other.accessJwt == accessJwt)&&(identical(other.refreshJwt, refreshJwt) || other.refreshJwt == refreshJwt));
}


@override
int get hashCode => Object.hash(runtimeType,rechargeUserEntity,accessJwt,refreshJwt);

@override
String toString() {
  return 'Account(rechargeUserEntity: $rechargeUserEntity, accessJwt: $accessJwt, refreshJwt: $refreshJwt)';
}


}

/// @nodoc
abstract mixin class $AccountCopyWith<$Res>  {
  factory $AccountCopyWith(Account value, $Res Function(Account) _then) = _$AccountCopyWithImpl;
@useResult
$Res call({
 RechargeUser rechargeUserEntity, String accessJwt, String refreshJwt
});


$RechargeUserCopyWith<$Res> get rechargeUserEntity;

}
/// @nodoc
class _$AccountCopyWithImpl<$Res>
    implements $AccountCopyWith<$Res> {
  _$AccountCopyWithImpl(this._self, this._then);

  final Account _self;
  final $Res Function(Account) _then;

/// Create a copy of Account
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? rechargeUserEntity = null,Object? accessJwt = null,Object? refreshJwt = null,}) {
  return _then(_self.copyWith(
rechargeUserEntity: null == rechargeUserEntity ? _self.rechargeUserEntity : rechargeUserEntity // ignore: cast_nullable_to_non_nullable
as RechargeUser,accessJwt: null == accessJwt ? _self.accessJwt : accessJwt // ignore: cast_nullable_to_non_nullable
as String,refreshJwt: null == refreshJwt ? _self.refreshJwt : refreshJwt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of Account
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RechargeUserCopyWith<$Res> get rechargeUserEntity {
  
  return $RechargeUserCopyWith<$Res>(_self.rechargeUserEntity, (value) {
    return _then(_self.copyWith(rechargeUserEntity: value));
  });
}
}


/// Adds pattern-matching-related methods to [Account].
extension AccountPatterns on Account {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Account value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Account() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Account value)  $default,){
final _that = this;
switch (_that) {
case _Account():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Account value)?  $default,){
final _that = this;
switch (_that) {
case _Account() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( RechargeUser rechargeUserEntity,  String accessJwt,  String refreshJwt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Account() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( RechargeUser rechargeUserEntity,  String accessJwt,  String refreshJwt)  $default,) {final _that = this;
switch (_that) {
case _Account():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( RechargeUser rechargeUserEntity,  String accessJwt,  String refreshJwt)?  $default,) {final _that = this;
switch (_that) {
case _Account() when $default != null:
return $default(_that.rechargeUserEntity,_that.accessJwt,_that.refreshJwt);case _:
  return null;

}
}

}

/// @nodoc


class _Account extends Account {
  const _Account({required this.rechargeUserEntity, required this.accessJwt, required this.refreshJwt}): super._();
  

@override final  RechargeUser rechargeUserEntity;
@override final  String accessJwt;
@override final  String refreshJwt;

/// Create a copy of Account
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AccountCopyWith<_Account> get copyWith => __$AccountCopyWithImpl<_Account>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Account&&(identical(other.rechargeUserEntity, rechargeUserEntity) || other.rechargeUserEntity == rechargeUserEntity)&&(identical(other.accessJwt, accessJwt) || other.accessJwt == accessJwt)&&(identical(other.refreshJwt, refreshJwt) || other.refreshJwt == refreshJwt));
}


@override
int get hashCode => Object.hash(runtimeType,rechargeUserEntity,accessJwt,refreshJwt);

@override
String toString() {
  return 'Account(rechargeUserEntity: $rechargeUserEntity, accessJwt: $accessJwt, refreshJwt: $refreshJwt)';
}


}

/// @nodoc
abstract mixin class _$AccountCopyWith<$Res> implements $AccountCopyWith<$Res> {
  factory _$AccountCopyWith(_Account value, $Res Function(_Account) _then) = __$AccountCopyWithImpl;
@override @useResult
$Res call({
 RechargeUser rechargeUserEntity, String accessJwt, String refreshJwt
});


@override $RechargeUserCopyWith<$Res> get rechargeUserEntity;

}
/// @nodoc
class __$AccountCopyWithImpl<$Res>
    implements _$AccountCopyWith<$Res> {
  __$AccountCopyWithImpl(this._self, this._then);

  final _Account _self;
  final $Res Function(_Account) _then;

/// Create a copy of Account
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? rechargeUserEntity = null,Object? accessJwt = null,Object? refreshJwt = null,}) {
  return _then(_Account(
rechargeUserEntity: null == rechargeUserEntity ? _self.rechargeUserEntity : rechargeUserEntity // ignore: cast_nullable_to_non_nullable
as RechargeUser,accessJwt: null == accessJwt ? _self.accessJwt : accessJwt // ignore: cast_nullable_to_non_nullable
as String,refreshJwt: null == refreshJwt ? _self.refreshJwt : refreshJwt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of Account
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RechargeUserCopyWith<$Res> get rechargeUserEntity {
  
  return $RechargeUserCopyWith<$Res>(_self.rechargeUserEntity, (value) {
    return _then(_self.copyWith(rechargeUserEntity: value));
  });
}
}

/// @nodoc
mixin _$RechargeUser {

 String get id; String get phone; String get authType; String get firstName; String get lastName; String get email; String get createdAt; String get updatedAt; String get braintreeCustomerId;
/// Create a copy of RechargeUser
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RechargeUserCopyWith<RechargeUser> get copyWith => _$RechargeUserCopyWithImpl<RechargeUser>(this as RechargeUser, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RechargeUser&&(identical(other.id, id) || other.id == id)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.authType, authType) || other.authType == authType)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.email, email) || other.email == email)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.braintreeCustomerId, braintreeCustomerId) || other.braintreeCustomerId == braintreeCustomerId));
}


@override
int get hashCode => Object.hash(runtimeType,id,phone,authType,firstName,lastName,email,createdAt,updatedAt,braintreeCustomerId);

@override
String toString() {
  return 'RechargeUser(id: $id, phone: $phone, authType: $authType, firstName: $firstName, lastName: $lastName, email: $email, createdAt: $createdAt, updatedAt: $updatedAt, braintreeCustomerId: $braintreeCustomerId)';
}


}

/// @nodoc
abstract mixin class $RechargeUserCopyWith<$Res>  {
  factory $RechargeUserCopyWith(RechargeUser value, $Res Function(RechargeUser) _then) = _$RechargeUserCopyWithImpl;
@useResult
$Res call({
 String id, String phone, String authType, String firstName, String lastName, String email, String createdAt, String updatedAt, String braintreeCustomerId
});




}
/// @nodoc
class _$RechargeUserCopyWithImpl<$Res>
    implements $RechargeUserCopyWith<$Res> {
  _$RechargeUserCopyWithImpl(this._self, this._then);

  final RechargeUser _self;
  final $Res Function(RechargeUser) _then;

/// Create a copy of RechargeUser
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? phone = null,Object? authType = null,Object? firstName = null,Object? lastName = null,Object? email = null,Object? createdAt = null,Object? updatedAt = null,Object? braintreeCustomerId = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,authType: null == authType ? _self.authType : authType // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,braintreeCustomerId: null == braintreeCustomerId ? _self.braintreeCustomerId : braintreeCustomerId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RechargeUser].
extension RechargeUserPatterns on RechargeUser {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RechargeUser value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RechargeUser() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RechargeUser value)  $default,){
final _that = this;
switch (_that) {
case _RechargeUser():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RechargeUser value)?  $default,){
final _that = this;
switch (_that) {
case _RechargeUser() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String phone,  String authType,  String firstName,  String lastName,  String email,  String createdAt,  String updatedAt,  String braintreeCustomerId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RechargeUser() when $default != null:
return $default(_that.id,_that.phone,_that.authType,_that.firstName,_that.lastName,_that.email,_that.createdAt,_that.updatedAt,_that.braintreeCustomerId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String phone,  String authType,  String firstName,  String lastName,  String email,  String createdAt,  String updatedAt,  String braintreeCustomerId)  $default,) {final _that = this;
switch (_that) {
case _RechargeUser():
return $default(_that.id,_that.phone,_that.authType,_that.firstName,_that.lastName,_that.email,_that.createdAt,_that.updatedAt,_that.braintreeCustomerId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String phone,  String authType,  String firstName,  String lastName,  String email,  String createdAt,  String updatedAt,  String braintreeCustomerId)?  $default,) {final _that = this;
switch (_that) {
case _RechargeUser() when $default != null:
return $default(_that.id,_that.phone,_that.authType,_that.firstName,_that.lastName,_that.email,_that.createdAt,_that.updatedAt,_that.braintreeCustomerId);case _:
  return null;

}
}

}

/// @nodoc


class _RechargeUser extends RechargeUser {
  const _RechargeUser({required this.id, required this.phone, required this.authType, required this.firstName, required this.lastName, required this.email, required this.createdAt, required this.updatedAt, required this.braintreeCustomerId}): super._();
  

@override final  String id;
@override final  String phone;
@override final  String authType;
@override final  String firstName;
@override final  String lastName;
@override final  String email;
@override final  String createdAt;
@override final  String updatedAt;
@override final  String braintreeCustomerId;

/// Create a copy of RechargeUser
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RechargeUserCopyWith<_RechargeUser> get copyWith => __$RechargeUserCopyWithImpl<_RechargeUser>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RechargeUser&&(identical(other.id, id) || other.id == id)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.authType, authType) || other.authType == authType)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.email, email) || other.email == email)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.braintreeCustomerId, braintreeCustomerId) || other.braintreeCustomerId == braintreeCustomerId));
}


@override
int get hashCode => Object.hash(runtimeType,id,phone,authType,firstName,lastName,email,createdAt,updatedAt,braintreeCustomerId);

@override
String toString() {
  return 'RechargeUser(id: $id, phone: $phone, authType: $authType, firstName: $firstName, lastName: $lastName, email: $email, createdAt: $createdAt, updatedAt: $updatedAt, braintreeCustomerId: $braintreeCustomerId)';
}


}

/// @nodoc
abstract mixin class _$RechargeUserCopyWith<$Res> implements $RechargeUserCopyWith<$Res> {
  factory _$RechargeUserCopyWith(_RechargeUser value, $Res Function(_RechargeUser) _then) = __$RechargeUserCopyWithImpl;
@override @useResult
$Res call({
 String id, String phone, String authType, String firstName, String lastName, String email, String createdAt, String updatedAt, String braintreeCustomerId
});




}
/// @nodoc
class __$RechargeUserCopyWithImpl<$Res>
    implements _$RechargeUserCopyWith<$Res> {
  __$RechargeUserCopyWithImpl(this._self, this._then);

  final _RechargeUser _self;
  final $Res Function(_RechargeUser) _then;

/// Create a copy of RechargeUser
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? phone = null,Object? authType = null,Object? firstName = null,Object? lastName = null,Object? email = null,Object? createdAt = null,Object? updatedAt = null,Object? braintreeCustomerId = null,}) {
  return _then(_RechargeUser(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,authType: null == authType ? _self.authType : authType // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,braintreeCustomerId: null == braintreeCustomerId ? _self.braintreeCustomerId : braintreeCustomerId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
