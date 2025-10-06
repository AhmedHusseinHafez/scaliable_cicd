fastlane documentation
----

# Installation

Make sure you have the latest version of the Xcode command line tools installed:

```sh
xcode-select --install
```

For _fastlane_ installation instructions, see [Installing _fastlane_](https://docs.fastlane.tools/#installing-fastlane)

# Available Actions

## iOS

### ios staging

```sh
[bundle exec] fastlane ios staging
```

Push a new beta build to TestFlight

### ios production

```sh
[bundle exec] fastlane ios production
```

Push a production build to App Store

### ios sync_certificates

```sh
[bundle exec] fastlane ios sync_certificates
```

Download certificates and provisioning profiles

### ios update_metadata

```sh
[bundle exec] fastlane ios update_metadata
```

Update app metadata

### ios clean

```sh
[bundle exec] fastlane ios clean
```

Clean build artifacts

### ios setup

```sh
[bundle exec] fastlane ios setup
```

Setup project for first time

### ios bump_version

```sh
[bundle exec] fastlane ios bump_version
```

Bump version number

----

This README.md is auto-generated and will be re-generated every time [_fastlane_](https://fastlane.tools) is run.

More information about _fastlane_ can be found on [fastlane.tools](https://fastlane.tools).

The documentation of _fastlane_ can be found on [docs.fastlane.tools](https://docs.fastlane.tools).
