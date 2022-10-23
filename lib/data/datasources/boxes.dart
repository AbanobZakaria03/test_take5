import 'package:hive/hive.dart';

import '../models/user/user.dart';

class Boxes
{
  static Box<User>getUser()=>Hive.box<User>('user');
  //box2
//box3
//...
}