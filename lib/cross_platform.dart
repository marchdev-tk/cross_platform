// Copyright (c) 2021, the MarchDev Toolkit project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.library cross_platform;

import 'src/platform.stub.dart'
    if (dart.library.html) 'src/platform.web.dart'
    if (dart.library.io) 'src/platform.io.dart' as cp;

const _platform = cp.Platform();

/// Information about the environment in which the current program is running.
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
}
