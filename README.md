# cross_platform

![Build](https://github.com/marchdev-tk/cross_platform/workflows/build/badge.svg)
[![Pub](https://img.shields.io/pub/v/cross_platform.svg)](https://pub.dev/packages/cross_platform)
![GitHub](https://img.shields.io/github/license/marchdev-tk/cross_platform)
![GitHub stars](https://img.shields.io/github/stars/marchdev-tk/cross_platform?style=social)

Cross platform package that unifies the work with Platform and wrapps dart:io Platform and dart:html to determine platform of the host machine an info about it.

## Getting Started

 * `Platform.isWeb` - gets whether host platform is web based or not.

 * `Platform.isAndroid` - gets whether this app is running on Android or not.

 * `Platform.isIOS` - gets whether this app is running on iOS or not.

 * `Platform.isMobile` - gets whether this app is running on iOS/Android or not.

 * `Platform.isMacOS` - gets whether this app is running on MacOS or not.

 * `Platform.isLinux` - gets whether this app is running on Linux or not.

 * `Platform.isWindows` - gets whether this app is running on Windows or not.

 * `Platform.isDesktop` - gets whether this app is running on MacOS/Linux/Windows or not.

 * `Platform.isFuchsia` - gets whether this app is running on Fuchsia or not.

 * `Platform.numberOfProcessors` - gets the number of individual execution units of the machine.

 * `Platform.pathSeparator` - gets the path separator used by the operating system to separate components in file paths.

 * `Platform.localeName` - gets the name of the current locale.

 * `Platform.operatingSystem` - gets a string representing the operating system or platform.

 * `Platform.operatingSystemVersion` - gets a string representing the version of the operating system or platform.

### Only IO implementation:

 * `Platform.localHostname` - gets the local hostname for the system.

 * `Platform.environment` - gets the environment for this process as a map from string key to string value.

 * `Platform.executable` - gets the path of the executable used to run the script in this isolate.

 * `Platform.resolvedExecutable` - gets the path of the executable used to run the script in this isolate after it has been resolved by the OS.

 * `Platform.script` - gets the absolute URI of the script being run in this isolate.

 * `Platform.executableArguments` - gets the flags passed to the executable used to run the script in this isolate.

 * `Platform.packageConfig` - gets the `--packages` flag passed to the executable used to run the script in this isolate.

 * `Platform.version` - gets the version of the current Dart runtime.

## Feature requests and Bug reports

Feel free to post a feature requests or report a bug [here](https://github.com/marchdev-tk/cross_platform/issues).
