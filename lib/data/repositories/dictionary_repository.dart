import 'package:dartz/dartz.dart';

import '../../core/errors/exceptions.dart';
import '../../core/errors/failures.dart';
import '../datasources/local_data_source.dart';
import '../datasources/remote_data_source.dart';

abstract class DictionaryRepository {
  //Future<Either<Failure, NewsResponse>> getAllNews();
}

class DictionaryRepositoryImpl extends DictionaryRepository {
  final LocalDataSource localDataSource;

  // final NetworkInfo networkInfo;
  final RemoteDataSource remoteDataSource;

  DictionaryRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
  });

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
