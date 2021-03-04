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
}
