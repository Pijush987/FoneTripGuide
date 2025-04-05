import 'package:avvtar/repository/sign_up_api/signup_api_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../utils/utils.dart';

part 'signup_event.dart';
part 'signup_state.dart';

// Signup Bloc Class

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  SignupApiRepository signupApiRepository;

  SignupBloc({required this.signupApiRepository}) : super(const SignupState()) {
    //user name change state manage
    on<TextChanged>((event, emit) {
      emit(state.copyWith(
        text: event.text,
      ));
    });
    //email change state manage
    on<EmailChanged>((event, emit) {
      emit(state.copyWith(
        email: event.email,
      ));
    });
    //phone number change state manage
    on<PhoneNoChanged>((event, emit) {
      emit(state.copyWith(
        phoneNo: event.phoneNo,
      ));
    });
    //password change state manage
    on<PasswordChanged>((event, emit) {
      emit(state.copyWith(
        password: event.password,
      ));
    });
    //country code change state manage
    on<CountryCodeChange>((event, emit) {
      emit(state.copyWith(
        countryCode: event.countryCode,
      ));
    });
    //Email Empty Field value change state manage
    on<EmptyFieldEmail>((event, emit) {
      emit(state.copyWith(
        isEmailFieldEmpty: event.isEmailFieldEmpty,
      ));
    });
    //Passowrd Empty Field value change state manage
    on<EmptyFieldPassword>((event, emit) {
      emit(state.copyWith(
        isPasswordFieldEmpty: event.isPasswordFieldEmpty,
      ));
    });
    //Phone Empty Field value change state manage
    on<EmptyFieldPhone>((event, emit) {
      emit(state.copyWith(
        isPhoneFieldEmpty: event.isPhoneFieldEmpty,
      ));
    });
    //Name Empty Field value change state manage
    on<EmptyFieldName>((event, emit) {
      emit(state.copyWith(
        isNameFieldEmpty: event.isNameFieldEmpty,
      ));
    });
    //Login api call
    on<SignupButtonPressed>((event, emit) async {
      Map<String, String> headers = {'Content-Type': 'application/json'};
      Map<String, dynamic> data = {
        "name": state.text,
        "password": state.password,
        "email": state.email,
        "phone_number": state.phoneNo,
      };

      emit(state.copyWith(postApiStatus: PostApiStatus.loading));

      await signupApiRepository
          .signupApi(data: data, header: headers)
          .then((value) async {
        if (value.errors!.message.isNotEmpty) {
          emit(state.copyWith(
              postApiStatus: PostApiStatus.error,
              message: value.errors!.message));
        } else {
          emit(state.copyWith(postApiStatus: PostApiStatus.success));
        }
      }).onError((error, stackTrace) {
        emit(state.copyWith(
            postApiStatus: PostApiStatus.error, message: error.toString()));
      });
    });
  }
}
