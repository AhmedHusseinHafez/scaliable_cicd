import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:async';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'app.dart';
import 'flavors.dart';

Future<void> main() async {
  F.appFlavor = Flavor.values.firstWhere(
    (element) => element.name == appFlavor,
  );
  WidgetsFlutterBinding.ensureInitialized();
  if (F.appFlavor == Flavor.prod) {
    runZonedGuarded(
      () async {
        await SentryFlutter.init(
          (options) {
            options.dsn =
                'https://235cf12b17c98406885d8971922d986a@o4510025900163072.ingest.de.sentry.io/4510025904226384';
          },
          appRunner: () async {
            // await Firebase.initializeApp();
            runApp(SentryWidget(child: App()));
          },
        );
      },
      (exception, stackTrace) async {
        await Sentry.captureException(exception, stackTrace: stackTrace);
      },
    );
  } else {
    // await Firebase.initializeApp();
    runApp(SentryWidget(child: App()));
  }
}
