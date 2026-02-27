// Copyright (c) 2021-2026, the MarchDev Toolkit project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.library cross_platform;

import 'src/platform.stub.dart'
    if (dart.library.html) 'src/platform.web.dart'
    if (dart.library.io) 'src/platform.io.dart' as cp;

const _platform = cp.Platform();

/// Information about the environment in which the current program is running.
///
/// Platform provides information such as the operating system,
/// the hostname of the computer, the value of environment variables,
/// the path to the running program,
/// and other global properties of the program being run.
class Platform {
  const Platform._();

  /// A constant that is true if the application was compiled to run on the web.
  static bool get isWeb => _platform.isWeb;

  /// Whether the operating system is a version of
  /// [Android](https://en.wikipedia.org/wiki/Android_%28operating_system%29).
  static bool get isAndroid => _platform.isAndroid;

  /// Whether the operating system is a version of
  /// [iOS](https://en.wikipedia.org/wiki/IOS).
  static bool get isIOS => _platform.isIOS;

  /// Whether the operating system is a version of Android or iOS.
  static bool get isMobile => isIOS || isAndroid;

  /// Whether the operating system is a version of
  /// [Linux](https://en.wikipedia.org/wiki/Linux).
  ///
  /// This value is `false` if the operating system is a specialized
  /// version of Linux that identifies itself by a different name,
  /// for example Android (see [isAndroid]).
  static bool get isLinux => _platform.isLinux;

  /// Whether the operating system is a version of
  /// [macOS](https://en.wikipedia.org/wiki/MacOS).
  static bool get isMacOS => _platform.isMacOS;

  /// Whether the operating system is a version of
  /// [Microsoft Windows](https://en.wikipedia.org/wiki/Microsoft_Windows).
  static bool get isWindows => _platform.isWindows;

  /// Whether the operating system is a version of Linux, MacOS or Windows.
  static bool get isDesktop => isLinux || isMacOS || isWindows;

  /// Whether the operating system is a version of
  /// [Fuchsia](https://en.wikipedia.org/wiki/Google_Fuchsia).
  static bool get isFuchsia => _platform.isFuchsia;

  /// The number of individual execution units of the machine.
  ///
  /// **Note**: on `web` platform could return [unknownNumberOfPrecessors].
  static int get numberOfProcessors => _platform.numberOfProcessors;

  /// Constant value that indicates that [numberOfProcessors] getter wasn't
  /// able to retrieve number of processors of the host machine.
  ///
  /// This could happen only for `web` platform.
  static const unknownNumberOfPrecessors = -1;

  /// The path separator used by the operating system to separate
  /// components in file paths.
  static String get pathSeparator => _platform.pathSeparator;

  /// Get the name of the current locale.
  static String get localeName => _platform.localeName;

  /// A string representing the operating system or platform.
  ///
  /// **Note**: on `web` platform could return [unknownOperatingSystem].
  static String get operatingSystem => _platform.operatingSystem;

  /// Constant value that indicates that [operatingSystem] getter wasn't
  /// able to retrieve operating system of the host machine.
  ///
  /// This could happen only for `web` platform.
  static const unknownOperatingSystem = 'unknown os';

  /// A string representing the version of the operating system or platform.
  ///
  /// **Note**: on `web` platform could return [unknownOperatingSystemVersion].
  static String get operatingSystemVersion => _platform.operatingSystemVersion;

  /// Constant value that indicates that [operatingSystemVersion] getter wasn't
  /// able to retrieve operating system version of the host machine.
  ///
  /// This could happen only for `web` platform.
  static const unknownOperatingSystemVersion = 'unknown os version';

  /// The local hostname for the system.
  ///
  /// **Note:** on `web` platform it will throw [UnsupportedError].
  static String get localHostname => _platform.localHostname;

  /// The environment for this process as a map from string key to string value.
  ///
  /// The map is unmodifiable,
  /// and its content is retrieved from the operating system on its first use.
  ///
  /// Environment variables on Windows are case-insensitive,
  /// so on Windows the map is case-insensitive and will convert
  /// all keys to upper case.
  /// On other platforms, keys can be distinguished by case.
  ///
  /// **Note:** on `web` platform it will throw [UnsupportedError].
  static Map<String, String> get environment => _platform.environment;

  /// The path of the executable used to run the script in this isolate.
  ///
  /// The literal path used to identify the script.
  /// This path might be relative or just be a name from which the executable
  /// was found by searching the system path.
  ///
  /// Use [resolvedExecutable] to get an absolute path to the executable.
  ///
  /// **Note:** on `web` platform it will throw [UnsupportedError].
  static String get executable => _platform.executable;

  /// The path of the executable used to run the script in this
  /// isolate after it has been resolved by the OS.
  ///
  /// This is the absolute path, with all symlinks resolved, to the
  /// executable used to run the script.
  ///
  /// **Note:** on `web` platform it will throw [UnsupportedError].
  static String get resolvedExecutable => _platform.resolvedExecutable;

  /// The absolute URI of the script being run in this isolate.
  ///
  /// If the script argument on the command line is relative,
  /// it is resolved to an absolute URI before fetching the script, and
  /// that absolute URI is returned.
  ///
  /// URI resolution only does string manipulation on the script path, and this
  /// may be different from the file system's path resolution behavior. For
  /// example, a symbolic link immediately followed by '..' will not be
  /// looked up.
  ///
  /// If the executable environment does not support [script],
  /// the URI is empty.
  ///
  /// **Note:** on `web` platform it always return empty URI.
  static Uri get script => _platform.script;

  /// The flags passed to the executable used to run the script in this isolate.
  ///
  /// These are the command-line flags to the executable that precedes
  /// the script name.
  /// Provides a new list every time the value is read.
  ///
  /// **Note:** on `web` platform it will throw [UnsupportedError].
  static List<String> get executableArguments => _platform.executableArguments;

  /// The `--packages` flag passed to the executable used to run the script
  /// in this isolate.
  ///
  /// If present, it specifies a file describing how Dart packages are looked up.
  ///
  /// Is `null` if there is no `--packages` flag.
  ///
  /// **Note:** on `web` platform it always return `null`.
  static String? get packageConfig => _platform.packageConfig;

  /// The version of the current Dart runtime.
  ///
  /// The value is a [semantic versioning](http://semver.org)
  /// string representing the version of the current Dart runtime,
  /// possibly followed by whitespace and other version and
  /// build details.
  ///
  /// **Note:** on `web` platform it will throw [UnsupportedError].
  static String get version => _platform.version;
}
