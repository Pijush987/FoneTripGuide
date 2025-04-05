part of 'signup_bloc.dart';

// Bloc State
class SignupState extends Equatable {
  final String text;
  final String email;
  final String phoneNo;
  final String message;
  final String password;
  final String countryCode;
  final bool isNameFieldEmpty;
  final bool isEmailFieldEmpty;
  final bool isPhoneFieldEmpty;
  final bool isPasswordFieldEmpty;
  final PostApiStatus postApiStatus;

  const SignupState({
    this.text = '',
    this.email = '',
    this.phoneNo = '',
    this.message = '',
    this.password = '',
    this.countryCode = '+91',
    this.isNameFieldEmpty = false,
    this.isEmailFieldEmpty = false,
    this.isPhoneFieldEmpty = false,
    this.isPasswordFieldEmpty = false,
    this.postApiStatus = PostApiStatus.initial,
  });

  SignupState copyWith({
    String? text,
    String? email,
    String? phoneNo,
    String? message,
    String? password,
    String? countryCode,
    bool? isNameFieldEmpty,
    bool? isEmailFieldEmpty,
    bool? isPhoneFieldEmpty,
    bool? isPasswordFieldEmpty,
    PostApiStatus? postApiStatus,
  }) {
    return SignupState(
      text: text ?? this.text,
      email: email ?? this.email,
      phoneNo: phoneNo ?? this.phoneNo,
      message: message ?? this.message,
      password: password ?? this.password,
      countryCode: countryCode ?? this.countryCode,
      isNameFieldEmpty: isNameFieldEmpty ?? this.isNameFieldEmpty,
      isEmailFieldEmpty: isEmailFieldEmpty ?? this.isEmailFieldEmpty,
      isPhoneFieldEmpty: isPhoneFieldEmpty ?? this.isPhoneFieldEmpty,
      isPasswordFieldEmpty: isPasswordFieldEmpty ?? this.isPasswordFieldEmpty,
      postApiStatus: postApiStatus ?? this.postApiStatus,
    );
  }

  @override
  List<Object> get props => [
        text,
        email,
        phoneNo,
        password,
        countryCode,
        isNameFieldEmpty,
        isEmailFieldEmpty,
        isPhoneFieldEmpty,
        isPasswordFieldEmpty,
        postApiStatus,
        message,
      ];
}
