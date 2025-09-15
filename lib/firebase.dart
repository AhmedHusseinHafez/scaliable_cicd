// firebase.dart
import 'package:firebase_core/firebase_core.dart';
import 'package:scalable_cicd/firebase_options_prod.dart' as prod;
import 'package:scalable_cicd/firebase_options_stg.dart' as stg;
import 'package:scalable_cicd/firebase_options_dev.dart' as dev;
import 'package:scalable_cicd/flavors.dart';

Future<void> initializeFirebaseApp() async {
  // Determine which Firebase options to use based on the flavor
  final firebaseOptions = switch (F.appFlavor) {
    Flavor.dev => prod.DefaultFirebaseOptions.currentPlatform,
    Flavor.staging => stg.DefaultFirebaseOptions.currentPlatform,
    Flavor.prod => dev.DefaultFirebaseOptions.currentPlatform,
  };
  await Firebase.initializeApp(options: firebaseOptions);
}
