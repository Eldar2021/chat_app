import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'src/app/app.dart';
import 'firebase_options.dart';

// https://github.com/FlutterLearningOrg/Chat-app
// https://github1s.com/FlutterLearningOrg/Chat-app

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}
