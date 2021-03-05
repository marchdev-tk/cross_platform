// Copyright (c) 2021, the MarchDev Toolkit project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:html' as html;

import 'package:flutter/foundation.dart';

import 'platform.interface.dart';

/// Web implementation of [PlatformInterface].
class Platform extends PlatformInterface {
  /// Constructs an instance of [Platform].
  const Platform() : super();

  @override
  bool get isWeb => kIsWeb;

  @override
  bool get isAndroid =>
      html.window.navigator.userAgent.toLowerCase().contains(RegExp('android'));

  @override
  bool get isIOS => html.window.navigator.userAgent
      .toLowerCase()
      .contains(RegExp('iphone|ipad|ipod'));

  @override
  bool get isLinux =>
      html.window.navigator.platform.toLowerCase().contains(RegExp('linux'));

  @override
  bool get isMacOS => html.window.navigator.platform
      .toLowerCase()
      .contains(RegExp('macintosh|macintel|macppc|mac68k|darwin|mac'));

  @override
  bool get isWindows => html.window.navigator.platform
      .toLowerCase()
      .contains(RegExp('win32|win64|windows|wince'));

  @override
  bool get isFuchsia =>
      html.window.navigator.platform.toLowerCase().contains(RegExp('fuchsia'));
}
