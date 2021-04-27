// Copyright (c) 2021, the MarchDev Toolkit project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:io' as io show Platform;

import 'package:flutter/foundation.dart';

import 'platform.interface.dart';

/// IO implementation of [PlatformInterface].
class Platform extends PlatformInterface {
  /// Constructs an instance of [Platform].
  const Platform() : super();

  @override
  bool get isWeb => kIsWeb;

  @override
  bool get isAndroid => io.Platform.isAndroid;

  @override
  bool get isIOS => io.Platform.isIOS;

  @override
  bool get isLinux => io.Platform.isLinux;

  @override
  bool get isMacOS => io.Platform.isMacOS;

  @override
  bool get isWindows => io.Platform.isWindows;

  @override
  bool get isFuchsia => io.Platform.isFuchsia;

  @override
  int get numberOfProcessors => io.Platform.numberOfProcessors;

  @override
  String get pathSeparator => io.Platform.pathSeparator;

  @override
  String get localeName => io.Platform.localeName;

  @override
  String get operatingSystem => io.Platform.operatingSystem;

  @override
  String get operatingSystemVersion => io.Platform.operatingSystemVersion;

  @override
  String get localHostname => io.Platform.localHostname;

  @override
  Map<String, String> get environment => io.Platform.environment;

  @override
  String get executable => io.Platform.executable;

  @override
  String get resolvedExecutable => io.Platform.resolvedExecutable;

  @override
  Uri get script => io.Platform.script;

  @override
  List<String> get executableArguments => io.Platform.executableArguments;

  @override
  String? get packageConfig => io.Platform.packageConfig;

  @override
  String get version => io.Platform.version;
}
