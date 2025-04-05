import 'package:avvtar/model/sign_up_model/signup_model.dart';
import '../../data/data.dart';
import '../../utils/utils.dart';
import 'signup_api_repository.dart';

class SignupHttpApiRepository extends SignupApiRepository {
  final BaseApiServices _apiServices = NetworkApiService();

  @override
  Future<SignupModel> signupApi({data, header}) async {
    final result = await _apiServices.postApi(
        url: AppUrl.signupApi, data: data, header: header);
    return SignupModel.fromJson(result);
  }
}
