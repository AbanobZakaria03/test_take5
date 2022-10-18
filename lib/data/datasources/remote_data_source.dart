import '../../core/constants/app_endpoints.dart';
import '../../core/utils/services/dio_client.dart';
import '../models/responses/user_response/user_response.dart';

abstract class RemoteDataSource {
  Future<UserResponse> loginUser(
      {required String mobileNo, required String password});

}

class RemoteDataSourceImpl extends RemoteDataSource {
  final DioClient client;
  RemoteDataSourceImpl({required this.client});

  @override
  Future<UserResponse> loginUser(
      {required String mobileNo, required String password}) async {
    final response = await client.request(
        url: AppEndpoints.userLogin,
        method: HttpMethod.POST,
        data: {'mobileNo': mobileNo, 'password': password});
    print(response.data);
    return UserResponse.fromJson(response.data);
  }

}
