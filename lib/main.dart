// ignore_for_file: depend_on_referenced_packages

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:stock/shared/constants.dart';

import 'app.dart';
import 'firebase_options.dart';

// late final FirebaseApp app;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final app = await Firebase.initializeApp(
    name: "Chill93Stock",
    options: DefaultFirebaseOptions.currentPlatform,
  );

  StockConfig.shared.database = FirebaseDatabase.instanceFor(
    app: app,
    databaseURL: app.options.databaseURL,
  );

  runApp(const StockApp());
}
