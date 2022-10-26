import 'package:hive/hive.dart';

import '../models/user/user.dart';

class Boxes
{
  static Box<User>getUser()=>Hive.box<User>('user');
  static Box getTakeFiveBox()=>Hive.box('takeFiveBox');
  static Box getRouteBox()=>Hive.box('route');
  //box2
//box3
//...
}