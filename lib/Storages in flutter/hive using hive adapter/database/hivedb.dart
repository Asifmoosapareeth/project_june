import 'package:get/get.dart';
import 'package:hive/hive.dart';

import '../models/User_Model.dart';

class HiveDb{
  HiveDb.internal();
  static HiveDb instance= HiveDb.internal();

  factory HiveDb(){  //factory constructor for creating singleton class
    return instance;  //(these class have only one instance)
  }
  Future<void>addUser(User user)async{
    final db = await Hive.openBox<User>('userData');
    db.put(user.id, user);
  }
  //read user datas from hive db
Future<List<User>>getUser()async{
    final db = await Hive. openBox<User>('userdata');
    return db.values.toList();
}
}
