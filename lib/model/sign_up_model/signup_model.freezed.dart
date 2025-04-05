// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signup_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SignupModel _$SignupModelFromJson(Map<String, dynamic> json) {
  return _SignupModel.fromJson(json);
}

/// @nodoc
mixin _$SignupModel {
  String get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  ErrorModel? get errors => throw _privateConstructorUsedError;
  UserData? get data => throw _privateConstructorUsedError;

  /// Serializes this SignupModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SignupModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignupModelCopyWith<SignupModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupModelCopyWith<$Res> {
  factory $SignupModelCopyWith(
          SignupModel value, $Res Function(SignupModel) then) =
      _$SignupModelCopyWithImpl<$Res, SignupModel>;
  @useResult
  $Res call(
      {String status, String message, ErrorModel? errors, UserData? data});

  $ErrorModelCopyWith<$Res>? get errors;
  $UserDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$SignupModelCopyWithImpl<$Res, $Val extends SignupModel>
    implements $SignupModelCopyWith<$Res> {
  _$SignupModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignupModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? errors = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      errors: freezed == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as ErrorModel?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserData?,
    ) as $Val);
  }

  /// Create a copy of SignupModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ErrorModelCopyWith<$Res>? get errors {
    if (_value.errors == null) {
      return null;
    }

    return $ErrorModelCopyWith<$Res>(_value.errors!, (value) {
      return _then(_value.copyWith(errors: value) as $Val);
    });
  }

  /// Create a copy of SignupModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $UserDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SignupModelImplCopyWith<$Res>
    implements $SignupModelCopyWith<$Res> {
  factory _$$SignupModelImplCopyWith(
          _$SignupModelImpl value, $Res Function(_$SignupModelImpl) then) =
      __$$SignupModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String status, String message, ErrorModel? errors, UserData? data});

  @override
  $ErrorModelCopyWith<$Res>? get errors;
  @override
  $UserDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$SignupModelImplCopyWithImpl<$Res>
    extends _$SignupModelCopyWithImpl<$Res, _$SignupModelImpl>
    implements _$$SignupModelImplCopyWith<$Res> {
  __$$SignupModelImplCopyWithImpl(
      _$SignupModelImpl _value, $Res Function(_$SignupModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignupModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? errors = freezed,
    Object? data = freezed,
  }) {
    return _then(_$SignupModelImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      errors: freezed == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as ErrorModel?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignupModelImpl implements _SignupModel {
  _$SignupModelImpl(
      {this.status = '', this.message = '', this.errors, this.data});

  factory _$SignupModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignupModelImplFromJson(json);

  @override
  @JsonKey()
  final String status;
  @override
  @JsonKey()
  final String message;
  @override
  final ErrorModel? errors;
  @override
  final UserData? data;

  @override
  String toString() {
    return 'SignupModel(status: $status, message: $message, errors: $errors, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignupModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.errors, errors) || other.errors == errors) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, errors, data);

  /// Create a copy of SignupModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignupModelImplCopyWith<_$SignupModelImpl> get copyWith =>
      __$$SignupModelImplCopyWithImpl<_$SignupModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignupModelImplToJson(
      this,
    );
  }
}

abstract class _SignupModel implements SignupModel {
  factory _SignupModel(
      {final String status,
      final String message,
      final ErrorModel? errors,
      final UserData? data}) = _$SignupModelImpl;

  factory _SignupModel.fromJson(Map<String, dynamic> json) =
      _$SignupModelImpl.fromJson;

  @override
  String get status;
  @override
  String get message;
  @override
  ErrorModel? get errors;
  @override
  UserData? get data;

  /// Create a copy of SignupModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignupModelImplCopyWith<_$SignupModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserData _$UserDataFromJson(Map<String, dynamic> json) {
  return _UserData.fromJson(json);
}

/// @nodoc
mixin _$UserData {
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  UserType? get userType => throw _privateConstructorUsedError;
  String get fonetripId => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get razorPayContactId => throw _privateConstructorUsedError;
  String? get razorPayFundAccountId => throw _privateConstructorUsedError;
  String? get deviceToken => throw _privateConstructorUsedError;
  String? get zipCode => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get profilePicture => throw _privateConstructorUsedError;
  String? get dateOfBirth => throw _privateConstructorUsedError;
  double? get latitude => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;
  String? get deletedAt => throw _privateConstructorUsedError;
  bool get razorPayPayoutAccountVerificationStatus =>
      throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  int get onlineStatus => throw _privateConstructorUsedError;

  /// Serializes this UserData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserDataCopyWith<UserData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDataCopyWith<$Res> {
  factory $UserDataCopyWith(UserData value, $Res Function(UserData) then) =
      _$UserDataCopyWithImpl<$Res, UserData>;
  @useResult
  $Res call(
      {String name,
      String email,
      String phoneNumber,
      String password,
      UserType? userType,
      String fonetripId,
      String? gender,
      String? location,
      String? city,
      String? razorPayContactId,
      String? razorPayFundAccountId,
      String? deviceToken,
      String? zipCode,
      String? country,
      String? profilePicture,
      String? dateOfBirth,
      double? latitude,
      double? longitude,
      int id,
      String createdAt,
      String updatedAt,
      String? deletedAt,
      bool razorPayPayoutAccountVerificationStatus,
      bool isActive,
      int onlineStatus});

  $UserTypeCopyWith<$Res>? get userType;
}

/// @nodoc
class _$UserDataCopyWithImpl<$Res, $Val extends UserData>
    implements $UserDataCopyWith<$Res> {
  _$UserDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? phoneNumber = null,
    Object? password = null,
    Object? userType = freezed,
    Object? fonetripId = null,
    Object? gender = freezed,
    Object? location = freezed,
    Object? city = freezed,
    Object? razorPayContactId = freezed,
    Object? razorPayFundAccountId = freezed,
    Object? deviceToken = freezed,
    Object? zipCode = freezed,
    Object? country = freezed,
    Object? profilePicture = freezed,
    Object? dateOfBirth = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? id = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? deletedAt = freezed,
    Object? razorPayPayoutAccountVerificationStatus = null,
    Object? isActive = null,
    Object? onlineStatus = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      userType: freezed == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as UserType?,
      fonetripId: null == fonetripId
          ? _value.fonetripId
          : fonetripId // ignore: cast_nullable_to_non_nullable
              as String,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      razorPayContactId: freezed == razorPayContactId
          ? _value.razorPayContactId
          : razorPayContactId // ignore: cast_nullable_to_non_nullable
              as String?,
      razorPayFundAccountId: freezed == razorPayFundAccountId
          ? _value.razorPayFundAccountId
          : razorPayFundAccountId // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceToken: freezed == deviceToken
          ? _value.deviceToken
          : deviceToken // ignore: cast_nullable_to_non_nullable
              as String?,
      zipCode: freezed == zipCode
          ? _value.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePicture: freezed == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      razorPayPayoutAccountVerificationStatus: null ==
              razorPayPayoutAccountVerificationStatus
          ? _value.razorPayPayoutAccountVerificationStatus
          : razorPayPayoutAccountVerificationStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      onlineStatus: null == onlineStatus
          ? _value.onlineStatus
          : onlineStatus // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of UserData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserTypeCopyWith<$Res>? get userType {
    if (_value.userType == null) {
      return null;
    }

    return $UserTypeCopyWith<$Res>(_value.userType!, (value) {
      return _then(_value.copyWith(userType: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserDataImplCopyWith<$Res>
    implements $UserDataCopyWith<$Res> {
  factory _$$UserDataImplCopyWith(
          _$UserDataImpl value, $Res Function(_$UserDataImpl) then) =
      __$$UserDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String email,
      String phoneNumber,
      String password,
      UserType? userType,
      String fonetripId,
      String? gender,
      String? location,
      String? city,
      String? razorPayContactId,
      String? razorPayFundAccountId,
      String? deviceToken,
      String? zipCode,
      String? country,
      String? profilePicture,
      String? dateOfBirth,
      double? latitude,
      double? longitude,
      int id,
      String createdAt,
      String updatedAt,
      String? deletedAt,
      bool razorPayPayoutAccountVerificationStatus,
      bool isActive,
      int onlineStatus});

  @override
  $UserTypeCopyWith<$Res>? get userType;
}

/// @nodoc
class __$$UserDataImplCopyWithImpl<$Res>
    extends _$UserDataCopyWithImpl<$Res, _$UserDataImpl>
    implements _$$UserDataImplCopyWith<$Res> {
  __$$UserDataImplCopyWithImpl(
      _$UserDataImpl _value, $Res Function(_$UserDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? phoneNumber = null,
    Object? password = null,
    Object? userType = freezed,
    Object? fonetripId = null,
    Object? gender = freezed,
    Object? location = freezed,
    Object? city = freezed,
    Object? razorPayContactId = freezed,
    Object? razorPayFundAccountId = freezed,
    Object? deviceToken = freezed,
    Object? zipCode = freezed,
    Object? country = freezed,
    Object? profilePicture = freezed,
    Object? dateOfBirth = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? id = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? deletedAt = freezed,
    Object? razorPayPayoutAccountVerificationStatus = null,
    Object? isActive = null,
    Object? onlineStatus = null,
  }) {
    return _then(_$UserDataImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      userType: freezed == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as UserType?,
      fonetripId: null == fonetripId
          ? _value.fonetripId
          : fonetripId // ignore: cast_nullable_to_non_nullable
              as String,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      razorPayContactId: freezed == razorPayContactId
          ? _value.razorPayContactId
          : razorPayContactId // ignore: cast_nullable_to_non_nullable
              as String?,
      razorPayFundAccountId: freezed == razorPayFundAccountId
          ? _value.razorPayFundAccountId
          : razorPayFundAccountId // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceToken: freezed == deviceToken
          ? _value.deviceToken
          : deviceToken // ignore: cast_nullable_to_non_nullable
              as String?,
      zipCode: freezed == zipCode
          ? _value.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePicture: freezed == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      razorPayPayoutAccountVerificationStatus: null ==
              razorPayPayoutAccountVerificationStatus
          ? _value.razorPayPayoutAccountVerificationStatus
          : razorPayPayoutAccountVerificationStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      onlineStatus: null == onlineStatus
          ? _value.onlineStatus
          : onlineStatus // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserDataImpl implements _UserData {
  _$UserDataImpl(
      {this.name = '',
      this.email = '',
      this.phoneNumber = '',
      this.password = '',
      this.userType,
      this.fonetripId = '',
      this.gender,
      this.location,
      this.city,
      this.razorPayContactId,
      this.razorPayFundAccountId,
      this.deviceToken,
      this.zipCode,
      this.country,
      this.profilePicture,
      this.dateOfBirth,
      this.latitude,
      this.longitude,
      this.id = 0,
      this.createdAt = '',
      this.updatedAt = '',
      this.deletedAt,
      this.razorPayPayoutAccountVerificationStatus = false,
      this.isActive = false,
      this.onlineStatus = 1});

  factory _$UserDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDataImplFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String phoneNumber;
  @override
  @JsonKey()
  final String password;
  @override
  final UserType? userType;
  @override
  @JsonKey()
  final String fonetripId;
  @override
  final String? gender;
  @override
  final String? location;
  @override
  final String? city;
  @override
  final String? razorPayContactId;
  @override
  final String? razorPayFundAccountId;
  @override
  final String? deviceToken;
  @override
  final String? zipCode;
  @override
  final String? country;
  @override
  final String? profilePicture;
  @override
  final String? dateOfBirth;
  @override
  final double? latitude;
  @override
  final double? longitude;
  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String createdAt;
  @override
  @JsonKey()
  final String updatedAt;
  @override
  final String? deletedAt;
  @override
  @JsonKey()
  final bool razorPayPayoutAccountVerificationStatus;
  @override
  @JsonKey()
  final bool isActive;
  @override
  @JsonKey()
  final int onlineStatus;

  @override
  String toString() {
    return 'UserData(name: $name, email: $email, phoneNumber: $phoneNumber, password: $password, userType: $userType, fonetripId: $fonetripId, gender: $gender, location: $location, city: $city, razorPayContactId: $razorPayContactId, razorPayFundAccountId: $razorPayFundAccountId, deviceToken: $deviceToken, zipCode: $zipCode, country: $country, profilePicture: $profilePicture, dateOfBirth: $dateOfBirth, latitude: $latitude, longitude: $longitude, id: $id, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt, razorPayPayoutAccountVerificationStatus: $razorPayPayoutAccountVerificationStatus, isActive: $isActive, onlineStatus: $onlineStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDataImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.userType, userType) ||
                other.userType == userType) &&
            (identical(other.fonetripId, fonetripId) ||
                other.fonetripId == fonetripId) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.razorPayContactId, razorPayContactId) ||
                other.razorPayContactId == razorPayContactId) &&
            (identical(other.razorPayFundAccountId, razorPayFundAccountId) ||
                other.razorPayFundAccountId == razorPayFundAccountId) &&
            (identical(other.deviceToken, deviceToken) ||
                other.deviceToken == deviceToken) &&
            (identical(other.zipCode, zipCode) || other.zipCode == zipCode) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.profilePicture, profilePicture) ||
                other.profilePicture == profilePicture) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt) &&
            (identical(other.razorPayPayoutAccountVerificationStatus,
                    razorPayPayoutAccountVerificationStatus) ||
                other.razorPayPayoutAccountVerificationStatus ==
                    razorPayPayoutAccountVerificationStatus) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.onlineStatus, onlineStatus) ||
                other.onlineStatus == onlineStatus));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        name,
        email,
        phoneNumber,
        password,
        userType,
        fonetripId,
        gender,
        location,
        city,
        razorPayContactId,
        razorPayFundAccountId,
        deviceToken,
        zipCode,
        country,
        profilePicture,
        dateOfBirth,
        latitude,
        longitude,
        id,
        createdAt,
        updatedAt,
        deletedAt,
        razorPayPayoutAccountVerificationStatus,
        isActive,
        onlineStatus
      ]);

  /// Create a copy of UserData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDataImplCopyWith<_$UserDataImpl> get copyWith =>
      __$$UserDataImplCopyWithImpl<_$UserDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDataImplToJson(
      this,
    );
  }
}

abstract class _UserData implements UserData {
  factory _UserData(
      {final String name,
      final String email,
      final String phoneNumber,
      final String password,
      final UserType? userType,
      final String fonetripId,
      final String? gender,
      final String? location,
      final String? city,
      final String? razorPayContactId,
      final String? razorPayFundAccountId,
      final String? deviceToken,
      final String? zipCode,
      final String? country,
      final String? profilePicture,
      final String? dateOfBirth,
      final double? latitude,
      final double? longitude,
      final int id,
      final String createdAt,
      final String updatedAt,
      final String? deletedAt,
      final bool razorPayPayoutAccountVerificationStatus,
      final bool isActive,
      final int onlineStatus}) = _$UserDataImpl;

  factory _UserData.fromJson(Map<String, dynamic> json) =
      _$UserDataImpl.fromJson;

  @override
  String get name;
  @override
  String get email;
  @override
  String get phoneNumber;
  @override
  String get password;
  @override
  UserType? get userType;
  @override
  String get fonetripId;
  @override
  String? get gender;
  @override
  String? get location;
  @override
  String? get city;
  @override
  String? get razorPayContactId;
  @override
  String? get razorPayFundAccountId;
  @override
  String? get deviceToken;
  @override
  String? get zipCode;
  @override
  String? get country;
  @override
  String? get profilePicture;
  @override
  String? get dateOfBirth;
  @override
  double? get latitude;
  @override
  double? get longitude;
  @override
  int get id;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  String? get deletedAt;
  @override
  bool get razorPayPayoutAccountVerificationStatus;
  @override
  bool get isActive;
  @override
  int get onlineStatus;

  /// Create a copy of UserData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserDataImplCopyWith<_$UserDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserType _$UserTypeFromJson(Map<String, dynamic> json) {
  return _UserType.fromJson(json);
}

/// @nodoc
mixin _$UserType {
  int get id => throw _privateConstructorUsedError;
  String get userType => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;
  String? get deletedAt => throw _privateConstructorUsedError;

  /// Serializes this UserType to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserTypeCopyWith<UserType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserTypeCopyWith<$Res> {
  factory $UserTypeCopyWith(UserType value, $Res Function(UserType) then) =
      _$UserTypeCopyWithImpl<$Res, UserType>;
  @useResult
  $Res call(
      {int id,
      String userType,
      String createdAt,
      String updatedAt,
      String? deletedAt});
}

/// @nodoc
class _$UserTypeCopyWithImpl<$Res, $Val extends UserType>
    implements $UserTypeCopyWith<$Res> {
  _$UserTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userType = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? deletedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userType: null == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserTypeImplCopyWith<$Res>
    implements $UserTypeCopyWith<$Res> {
  factory _$$UserTypeImplCopyWith(
          _$UserTypeImpl value, $Res Function(_$UserTypeImpl) then) =
      __$$UserTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String userType,
      String createdAt,
      String updatedAt,
      String? deletedAt});
}

/// @nodoc
class __$$UserTypeImplCopyWithImpl<$Res>
    extends _$UserTypeCopyWithImpl<$Res, _$UserTypeImpl>
    implements _$$UserTypeImplCopyWith<$Res> {
  __$$UserTypeImplCopyWithImpl(
      _$UserTypeImpl _value, $Res Function(_$UserTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userType = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? deletedAt = freezed,
  }) {
    return _then(_$UserTypeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userType: null == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserTypeImpl implements _UserType {
  _$UserTypeImpl(
      {this.id = 0,
      this.userType = '',
      this.createdAt = '',
      this.updatedAt = '',
      this.deletedAt});

  factory _$UserTypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserTypeImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String userType;
  @override
  @JsonKey()
  final String createdAt;
  @override
  @JsonKey()
  final String updatedAt;
  @override
  final String? deletedAt;

  @override
  String toString() {
    return 'UserType(id: $id, userType: $userType, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserTypeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userType, userType) ||
                other.userType == userType) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, userType, createdAt, updatedAt, deletedAt);

  /// Create a copy of UserType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserTypeImplCopyWith<_$UserTypeImpl> get copyWith =>
      __$$UserTypeImplCopyWithImpl<_$UserTypeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserTypeImplToJson(
      this,
    );
  }
}

abstract class _UserType implements UserType {
  factory _UserType(
      {final int id,
      final String userType,
      final String createdAt,
      final String updatedAt,
      final String? deletedAt}) = _$UserTypeImpl;

  factory _UserType.fromJson(Map<String, dynamic> json) =
      _$UserTypeImpl.fromJson;

  @override
  int get id;
  @override
  String get userType;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  String? get deletedAt;

  /// Create a copy of UserType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserTypeImplCopyWith<_$UserTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ErrorModel _$ErrorModelFromJson(Map<String, dynamic> json) {
  return _ErrorModel.fromJson(json);
}

/// @nodoc
mixin _$ErrorModel {
  String get message => throw _privateConstructorUsedError;

  /// Serializes this ErrorModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ErrorModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ErrorModelCopyWith<ErrorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorModelCopyWith<$Res> {
  factory $ErrorModelCopyWith(
          ErrorModel value, $Res Function(ErrorModel) then) =
      _$ErrorModelCopyWithImpl<$Res, ErrorModel>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$ErrorModelCopyWithImpl<$Res, $Val extends ErrorModel>
    implements $ErrorModelCopyWith<$Res> {
  _$ErrorModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ErrorModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ErrorModelImplCopyWith<$Res>
    implements $ErrorModelCopyWith<$Res> {
  factory _$$ErrorModelImplCopyWith(
          _$ErrorModelImpl value, $Res Function(_$ErrorModelImpl) then) =
      __$$ErrorModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorModelImplCopyWithImpl<$Res>
    extends _$ErrorModelCopyWithImpl<$Res, _$ErrorModelImpl>
    implements _$$ErrorModelImplCopyWith<$Res> {
  __$$ErrorModelImplCopyWithImpl(
      _$ErrorModelImpl _value, $Res Function(_$ErrorModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ErrorModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorModelImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ErrorModelImpl implements _ErrorModel {
  _$ErrorModelImpl({this.message = ''});

  factory _$ErrorModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ErrorModelImplFromJson(json);

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'ErrorModel(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorModelImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ErrorModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorModelImplCopyWith<_$ErrorModelImpl> get copyWith =>
      __$$ErrorModelImplCopyWithImpl<_$ErrorModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ErrorModelImplToJson(
      this,
    );
  }
}

abstract class _ErrorModel implements ErrorModel {
  factory _ErrorModel({final String message}) = _$ErrorModelImpl;

  factory _ErrorModel.fromJson(Map<String, dynamic> json) =
      _$ErrorModelImpl.fromJson;

  @override
  String get message;

  /// Create a copy of ErrorModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorModelImplCopyWith<_$ErrorModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
