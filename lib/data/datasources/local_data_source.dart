import 'dart:convert';

import 'package:hive/hive.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:test_take5/data/datasources/boxes.dart';
import '../../core/utils/services/local_storage_service.dart';
import '../models/responses/user_login_response/user_login_response.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

import '../models/user/user.dart';


abstract class LocalDataSource {
  Future<void> cacheUser(User user);

  User? getCachedUser();
}

const CACHED_USER = 'CACHED_USER';

class LocalDataSourceImpl implements LocalDataSource{

  //final LocalStorageService localStorageService;
  //LocalDataSourceImpl({required this.localStorageService});
  @override
  Future<void> cacheUser(User user) async {
    final box=Boxes.getUser();
    box.put('user',user);
   // box.add(user);
   // print(box.getAt(0));
   //print('***');
  }

  @override
  User? getCachedUser()
  {
    final box=Boxes.getUser();
    print(box.get('user'));
    return box.get('user');
  }
}
