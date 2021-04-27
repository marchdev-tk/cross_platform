// Copyright (c) 2021, the MarchDev Toolkit project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'platform.interface.dart';

/// Stub implementation of [PlatformInterface].
class Platform extends PlatformInterface {
  /// Constructs an instance of [Platform].
  const Platform() : super();

  @override
  bool get isWeb => throw UnimplementedError();

  @override
  bool get isAndroid => throw UnimplementedError();

  @override
  bool get isIOS => throw UnimplementedError();

  @override
  bool get isLinux => throw UnimplementedError();

  @override
  bool get isMacOS => throw UnimplementedError();

  @override
  bool get isWindows => throw UnimplementedError();

  @override
  bool get isFuchsia => throw UnimplementedError();

  @override
  int get numberOfProcessors => throw UnimplementedError();

  @override
  String get pathSeparator => throw UnimplementedError();

  @override
  String get localeName => throw UnimplementedError();

  @override
  String get operatingSystem => throw UnimplementedError();

  @override
  String get operatingSystemVersion => throw UnimplementedError();

  @override
  String get localHostname => throw UnimplementedError();

  @override
  Map<String, String> get environment => throw UnimplementedError();

  @override
  String get executable => throw UnimplementedError();

  @override
  String get resolvedExecutable => throw UnimplementedError();

  @override
  Uri get script => throw UnimplementedError();

  @override
  List<String> get executableArguments => throw UnimplementedError();

  @override
  String? get packageConfig => throw UnimplementedError();

  @override
  String get version => throw UnimplementedError();
}
