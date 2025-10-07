import 'package:flutter/material.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import '../flavors.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(F.title)),
      body: Center(child: Text('Hello ${F.title}')),
      floatingActionButton: F.appFlavor == Flavor.prod
          ? FloatingActionButton(
              onPressed: () async {
                try {
                  throw StateError('Sentry Test Exception');
                } catch (exception, stackTrace) {
                  await Sentry.captureException(
                    exception,
                    stackTrace: stackTrace,
                  );
                }
              },
              tooltip: 'Debug',
              child: const Icon(Icons.bug_report),
            )
          : null,
    );
  }
}
