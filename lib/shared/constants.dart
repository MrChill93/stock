import 'package:firebase_database/firebase_database.dart';

import '../presentation/features/user/data/model/user_model.dart';

class StockConfig {
  String? dbUrl;
  late FirebaseDatabase? database;
  FirebaseDatabase get database$ => database!;

  StockConfig._internal();
  static StockConfig? _instance;
  static StockConfig get shared {
    _instance ??= StockConfig._internal();

    return _instance!;
  }
}

class UserRepoX {
  UserRepoX._internal();
  static UserRepoX? _instance;
  static UserRepoX get shared {
    _instance ??= UserRepoX._internal();

    return _instance!;
  }

  UserModel? signedInUser;
  UserModel get user => signedInUser!;

  String? userId;
  String get userId$ => userId!;
}
