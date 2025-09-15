#!/bin/bash
# Script to generate Firebase configuration files for different environments/flavors
# Feel free to reuse and adapt this script for your own projects

if [[ $# -eq 0 ]]; then
  echo "Error: No environment specified. Use 'dev', 'stg', or 'prod'."
  exit 1
fi

case $1 in
  dev)
    flutterfire config \
    --project=scaliablecicddevelopment \
    --out=lib/firebase_options_dev.dart \
    --ios-bundle-id=com.company.scalablecicd.dev \
    --ios-out=ios/flavors/dev/GoogleService-Info.plist \
    --android-package-name=com.company.scalablecicd.dev \
    --android-out=android/app/src/dev/google-services.json
    ;;
  stg)
    flutterfire config \
    --project=scaliablecicdstaging \
    --out=lib/firebase_options_stg.dart \
    --ios-bundle-id=com.company.scalablecicd.staging \
    --ios-out=ios/flavors/dev/GoogleService-Info.plist \
    --android-package-name=com.company.scalablecicd.staging \
    --android-out=android/app/src/dev/google-services.json
    ;;
  prod)
    flutterfire config \
    --project=scaliablecicdproduction \
    --out=lib/firebase_options_prod.dart \
    --ios-bundle-id=com.company.scalablecicd \
    --ios-out=ios/flavors/dev/GoogleService-Info.plist \
    --android-package-name=com.company.scalablecicd \
    --android-out=android/app/src/dev/google-services.json
    ;;
  *)
    echo "Error: Invalid environment specified. Use 'dev', 'stg', or 'prod'."
    exit 1
    ;;
esac