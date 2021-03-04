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
}
