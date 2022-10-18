// import 'dart:convert';
//
// import 'package:shared_preferences/shared_preferences.dart';
//
// import '../../core/utils/services/local_storage_service.dart';
// import '../models/responses/user_response/trip_pending_response.dart';
//
// abstract class LocalDataSource {
//   Future<void> cacheUser(UserResponse user);
//
//   Future<UserResponse> getCachedUser();
// }
//
// const CACHED_USER = 'CACHED_USER';
//
// class LocalDataSourceImpl implements LocalDataSource {
//   final LocalStorageService localStorageService;
//
//   LocalDataSourceImpl({required this.localStorageService});
//
//   @override
//   Future<void> cacheUser(UserResponse user) async {
//     await localStorageService.saveData(
//         key: CACHED_USER, value: jsonEncode(user.toJson()));
//   }
//
//   @override
//   Future<UserResponse> getCachedUser() async {
//     var user = await localStorageService.getData(key: CACHED_USER);
//     return UserResponse.fromJson(jsonDecode(user));
//   }
// }
