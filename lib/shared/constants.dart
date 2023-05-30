import 'package:firebase_database/firebase_database.dart';

import '../presentation/features/user/data/model/user_model.dart';

class HCM23Config {
  String? dbUrl;
  late FirebaseDatabase? database;
  FirebaseDatabase get database$ => database!;

  HCM23Config._internal();
  static HCM23Config? _instance;
  static HCM23Config get shared {
    _instance ??= HCM23Config._internal();

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
