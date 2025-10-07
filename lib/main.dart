import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

import 'app.dart';
import 'flavors.dart';

void main() async {
  F.appFlavor = Flavor.values.firstWhere(
    (element) => element.name == appFlavor,
  );

  if (F.appFlavor == Flavor.prod) {
    runZonedGuarded(
      () async {
        await SentryFlutter.init((options) {
          options.dsn =
              'https://f803c7a1427bb7b0c275463061ad369a@o4510025900163072.ingest.de.sentry.io/4510147704062032';
          options.sendDefaultPii = true;
        });

        runApp(App());
      },
      (exception, stackTrace) async {
        await Sentry.captureException(exception, stackTrace: stackTrace);
      },
    );
  } else {
    runApp(const App());
  }
}
