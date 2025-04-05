import '../../model/sign_up_model/signup_model.dart';

abstract class SignupApiRepository {
  Future<SignupModel> signupApi({dynamic data, dynamic header});
}
