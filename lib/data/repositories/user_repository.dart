import 'package:dartz/dartz.dart';
import '../../core/errors/exceptions.dart';
import '../../core/errors/failures.dart';
import '../datasources/local_data_source.dart';
import '../datasources/remote_data_source.dart';
import '../models/responses/user_response/user_response.dart';
import '../models/user/user.dart';

abstract class UserRepository {


  Future<Either<Failure, Unit>> cacheUser(UserResponse user);
  Future<Either<Failure, UserResponse>> getCachedUser();

  Future<Either<Failure, UserResponse>> loginUser({required String mobileNo,required String password});
}

class UserRepositoryImpl extends UserRepository {
  final LocalDataSource localDataSource;

  // final NetworkInfo networkInfo;
  final RemoteDataSource remoteDataSource;

  UserRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
  });

  @override
  Future<Either<Failure, Unit>> cacheUser(UserResponse user) async {
    try {
       localDataSource.cacheUser(user);
      return const Right(unit);
    } catch (e) {
      return const Left(ServerFailure('No Cached User!'));
    }
  }

  @override
  Future<Either<Failure, UserResponse>> getCachedUser() async {
    try {
      var user = await localDataSource.getCachedUser();
      return Right(user);
    } catch (e) {
      return const Left(ServerFailure('No Cached User!'));
    }
  }


  @override
  Future<Either<Failure, UserResponse>> loginUser({required String mobileNo,required String password})async {
    try {
      UserResponse result = await remoteDataSource.loginUser(mobileNo: mobileNo, password: password);
      localDataSource.cacheUser(result);
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    }
  }
}
