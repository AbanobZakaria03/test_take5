import 'dart:convert';

import 'package:hive/hive.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../core/utils/services/local_storage_service.dart';
import '../models/responses/user_login_response/user_login_response.dart';
import 'package:path_provider/path_provider.dart' as path_provider;


abstract class LocalDataSource {
  Future<void> cacheUser(UserLoginResponse user);

  //Future<UserLoginResponse> getCachedUser();
}

const CACHED_USER = 'CACHED_USER';

class LocalDataSourceImpl implements LocalDataSource{

  //final LocalStorageService localStorageService;
  //LocalDataSourceImpl({required this.localStorageService});
  @override
  Future<void> cacheUser(UserLoginResponse user) async {
    final directory=await path_provider.getApplicationDocumentsDirectory();
    Hive.init(directory.path);
    var take5Box =await Hive.openBox('Take5Box');//name of box
    final u=Hive.box('Take5Box');
    u.add(user);
    print(u.getAt(0));
  }

  // @override
  // Future<UserLoginResponse> getCachedUser() async {
  //   UserLoginResponse user;
  //   user=
  // }
}
