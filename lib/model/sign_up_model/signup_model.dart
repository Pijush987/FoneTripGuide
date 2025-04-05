import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_model.freezed.dart';
part 'signup_model.g.dart';

@freezed
class SignupModel with _$SignupModel {
  factory SignupModel({
    @Default('') String status,
    @Default('') String message,
    ErrorModel? errors,
    UserData? data,
  }) = _SignupModel;

  factory SignupModel.fromJson(Map<String, dynamic> json) =>
      _$SignupModelFromJson(json);
}

@freezed
class UserData with _$UserData {
  factory UserData({
    @Default('') String name,
    @Default('') String email,
    @Default('') String phoneNumber,
    @Default('') String password,
    UserType? userType,
    @Default('') String fonetripId,
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
    @Default(0) int id,
    @Default('') String createdAt,
    @Default('') String updatedAt,
    String? deletedAt,
    @Default(false) bool razorPayPayoutAccountVerificationStatus,
    @Default(false) bool isActive,
    @Default(1) int onlineStatus,
  }) = _UserData;

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}

@freezed
class UserType with _$UserType {
  factory UserType({
    @Default(0) int id,
    @Default('') String userType,
    @Default('') String createdAt,
    @Default('') String updatedAt,
    String? deletedAt,
  }) = _UserType;

  factory UserType.fromJson(Map<String, dynamic> json) =>
      _$UserTypeFromJson(json);
}

@freezed
class ErrorModel with _$ErrorModel {
  factory ErrorModel({
    @Default('') String message,
  }) = _ErrorModel;

  factory ErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ErrorModelFromJson(json);
}
