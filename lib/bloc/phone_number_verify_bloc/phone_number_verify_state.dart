part of 'phone_number_verify_bloc.dart';

// Bloc State
class PhoneNumberVerifyState extends Equatable {
  final String verifyCode;

  const PhoneNumberVerifyState({
    this.verifyCode = '',
  });

  PhoneNumberVerifyState copyWith({
    String? verifyCode,
  }) {
    return PhoneNumberVerifyState(
      verifyCode: verifyCode ?? this.verifyCode,
    );
  }

  @override
  List<Object> get props => [verifyCode];
}
