// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignupModelImpl _$$SignupModelImplFromJson(Map<String, dynamic> json) =>
    _$SignupModelImpl(
      status: json['status'] as String? ?? '',
      message: json['message'] as String? ?? '',
      errors: json['errors'] == null
          ? null
          : ErrorModel.fromJson(json['errors'] as Map<String, dynamic>),
      data: json['data'] == null
          ? null
          : UserData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SignupModelImplToJson(_$SignupModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'errors': instance.errors,
      'data': instance.data,
    };

_$UserDataImpl _$$UserDataImplFromJson(Map<String, dynamic> json) =>
    _$UserDataImpl(
      name: json['name'] as String? ?? '',
      email: json['email'] as String? ?? '',
      phoneNumber: json['phoneNumber'] as String? ?? '',
      password: json['password'] as String? ?? '',
      userType: json['userType'] == null
          ? null
          : UserType.fromJson(json['userType'] as Map<String, dynamic>),
      fonetripId: json['fonetripId'] as String? ?? '',
      gender: json['gender'] as String?,
      location: json['location'] as String?,
      city: json['city'] as String?,
      razorPayContactId: json['razorPayContactId'] as String?,
      razorPayFundAccountId: json['razorPayFundAccountId'] as String?,
      deviceToken: json['deviceToken'] as String?,
      zipCode: json['zipCode'] as String?,
      country: json['country'] as String?,
      profilePicture: json['profilePicture'] as String?,
      dateOfBirth: json['dateOfBirth'] as String?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      id: (json['id'] as num?)?.toInt() ?? 0,
      createdAt: json['createdAt'] as String? ?? '',
      updatedAt: json['updatedAt'] as String? ?? '',
      deletedAt: json['deletedAt'] as String?,
      razorPayPayoutAccountVerificationStatus:
          json['razorPayPayoutAccountVerificationStatus'] as bool? ?? false,
      isActive: json['isActive'] as bool? ?? false,
      onlineStatus: (json['onlineStatus'] as num?)?.toInt() ?? 1,
    );

Map<String, dynamic> _$$UserDataImplToJson(_$UserDataImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'password': instance.password,
      'userType': instance.userType,
      'fonetripId': instance.fonetripId,
      'gender': instance.gender,
      'location': instance.location,
      'city': instance.city,
      'razorPayContactId': instance.razorPayContactId,
      'razorPayFundAccountId': instance.razorPayFundAccountId,
      'deviceToken': instance.deviceToken,
      'zipCode': instance.zipCode,
      'country': instance.country,
      'profilePicture': instance.profilePicture,
      'dateOfBirth': instance.dateOfBirth,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'id': instance.id,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'deletedAt': instance.deletedAt,
      'razorPayPayoutAccountVerificationStatus':
          instance.razorPayPayoutAccountVerificationStatus,
      'isActive': instance.isActive,
      'onlineStatus': instance.onlineStatus,
    };

_$UserTypeImpl _$$UserTypeImplFromJson(Map<String, dynamic> json) =>
    _$UserTypeImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      userType: json['userType'] as String? ?? '',
      createdAt: json['createdAt'] as String? ?? '',
      updatedAt: json['updatedAt'] as String? ?? '',
      deletedAt: json['deletedAt'] as String?,
    );

Map<String, dynamic> _$$UserTypeImplToJson(_$UserTypeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userType': instance.userType,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'deletedAt': instance.deletedAt,
    };

_$ErrorModelImpl _$$ErrorModelImplFromJson(Map<String, dynamic> json) =>
    _$ErrorModelImpl(
      message: json['message'] as String? ?? '',
    );

Map<String, dynamic> _$$ErrorModelImplToJson(_$ErrorModelImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
    };
