import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:test_take5/data/datasources/remote_data_source.dart';
import 'package:test_take5/data/models/requests/trip_start_request/trip_start_request.dart';
import 'package:test_take5/injection_container.dart' as di;
import 'package:test_take5/injection_container.dart';

Future<void> main() async {
  await di.init();
  setUpAll(() {
    TestWidgetsFlutterBinding.ensureInitialized();
  });
  test(
    'test login API',//name
        () async {
      //arrange
      RemoteDataSource remoteDataSource = sl<RemoteDataSource>();
      //act
      final result = await remoteDataSource.loginUser(mobileNo: 'asmaa', password: '1234');
      //assert
      print(result);
    },
  );
  test(
    'test startTrip API',//name
        () async {
      //arrange
      RemoteDataSource remoteDataSource = sl<RemoteDataSource>();
      //act
      final result = await remoteDataSource.startTrip(tripStartRequest: TripStartRequest(userId: '123456', tripId:1, jobsiteId: 1, startingDate: DateTime.now()));
      //assert
      print(result);
    },
  );
  test(
    'test getPendingTrip API',//name
        () async {
      //arrange
      RemoteDataSource remoteDataSource = sl<RemoteDataSource>();
      //act
      final result = await remoteDataSource.getPendingTrip(userId: '123');
      //assert
      print(result);
    },
  );
}
