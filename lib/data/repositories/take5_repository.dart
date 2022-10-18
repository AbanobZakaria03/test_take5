import 'package:dartz/dartz.dart';

import '../../core/errors/exceptions.dart';
import '../models/responses/user_login_response/user_login_response.dart';
import '../../core/errors/failures.dart';
import '../datasources/remote_data_source.dart';

abstract class Take5Repository {
  Future<Either<Failure, UserLoginResponse>> loginUser(
      {required String mobileNo, required String password});
}

class Take5RepositoryImpl extends Take5Repository {
  // final LocalDataSource localDataSource;

  // final NetworkInfo networkInfo;
  final RemoteDataSource remoteDataSource;

  Take5RepositoryImpl({
    required this.remoteDataSource,
    // required this.localDataSource,
  });

  @override
  Future<Either<Failure, UserLoginResponse>> loginUser(
      {required String mobileNo, required String password}) async {
    try {
      UserLoginResponse result = await remoteDataSource.loginUser(
          mobileNo: mobileNo, password: password);
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    }
  }

// @override
// Future<Either<Failure, NewsResponse>> getAllNews() async {
//   try {
//     NewsResponse result = await remoteDataSource.getAllNews();
//     return Right(result);
//   } on ServerException catch (e) {
//     return Left(ServerFailure(e.message));
//   }
// }

}
