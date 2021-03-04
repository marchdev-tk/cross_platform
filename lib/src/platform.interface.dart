// Copyright (c) 2021, the MarchDev Toolkit project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/// Platform Interface.
abstract class PlatformInterface {
  /// Constructs an instance of [PlatformInterface].
  const PlatformInterface();

  /// A constant that is true if the application was compiled to run on the web.
  bool get isWeb;

  /// Whether the operating system is a version of
  /// [iOS](https://en.wikipedia.org/wiki/IOS).
  bool get isIOS;

  /// Whether the operating system is a version of
  /// [Android](https://en.wikipedia.org/wiki/Android_%28operating_system%29).
  bool get isAndroid;
}
