enum Flavor { dev, staging, prod }

class F {
  static late final Flavor appFlavor;

  static String get name => appFlavor.name;

  static String get title {
    switch (appFlavor) {
      case Flavor.dev:
        return '[Dev] ScalableCI|CD';
      case Flavor.staging:
        return '[Staging] ScalableCI|CD';
      case Flavor.prod:
        return 'ScalableCI|CD';
    }
  }
}
