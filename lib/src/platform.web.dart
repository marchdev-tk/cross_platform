// Copyright (c) 2021, the MarchDev Toolkit project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:html' as html;

import 'package:flutter/foundation.dart';

import 'platform.interface.dart';
import '../cross_platform.dart' as cp;

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
      html.window.navigator.platform
          ?.toLowerCase()
          .contains(RegExp('linux|x11')) ??
      false;

  @override
  bool get isMacOS =>
      html.window.navigator.platform?.toLowerCase().contains(
          RegExp('macintosh|macintel|macppc|mac68k|mac_powerpc|darwin|mac')) ??
      false;

  @override
  bool get isWindows =>
      html.window.navigator.platform
          ?.toLowerCase()
          .contains(RegExp('win16|win32|win64|windows|wince')) ??
      false;

  @override
  bool get isFuchsia =>
      html.window.navigator.platform
          ?.toLowerCase()
          .contains(RegExp('fuchsia')) ??
      false;

  @override
  int get numberOfProcessors =>
      html.window.navigator.hardwareConcurrency ??
      cp.Platform.unknownNumberOfPrecessors;

  @override
  String get pathSeparator {
    if (isWindows) {
      return '\\';
    } else if (isMacOS || isLinux) {
      return '/';
    }

    return '/';
  }

  @override
  String get localeName => html.window.navigator.language;

  @override
  String get operatingSystem {
    var os = cp.Platform.unknownOperatingSystem;

    if (isAndroid) {
      os = 'android';
    } else if (isIOS) {
      os = 'ios';
    } else if (isMacOS) {
      os = 'macos';
    } else if (isLinux) {
      os = 'linux';
    } else if (isWindows) {
      os = 'windows';
    } else if (isFuchsia) {
      os = 'fuchsia';
    }

    return os;
  }

  @override
  String get operatingSystemVersion {
    String? version;

    if (isWindows) {
      final winVersions = {
        'Windows 3.11': RegExp('Win16'),
        'Windows CE': RegExp('Windows CE'),
        'Windows NT 4.0': RegExp('(Windows NT 4.0|WinNT4.0|WinNT|Windows NT)'),
        'Windows 95': RegExp('(Windows 95|Win95|Windows_95)'),
        'Windows 98': RegExp('(Windows 98|Win98)'),
        'Windows ME': RegExp('(Win 9x 4.90|Windows ME)'),
        'Windows 2000': RegExp('(Windows NT 5.0|Windows 2000)'),
        'Windows XP': RegExp('(Windows NT 5.1|Windows XP)'),
        'Windows Server 2003': RegExp('Windows NT 5.2'),
        'Windows Vista': RegExp('Windows NT 6.0'),
        'Windows 7': RegExp('(Windows 7|Windows NT 6.1)'),
        'Windows 8': RegExp('(Windows 8|Windows NT 6.2)'),
        'Windows 8.1': RegExp('(Windows 8.1|Windows NT 6.3)'),
        'Windows 10': RegExp('(Windows 10.0|Windows NT 10.0)'),
      };

      String? os;
      for (final item in winVersions.entries) {
        final hasMatch = item.value.hasMatch(html.window.navigator.userAgent);
        if (hasMatch) {
          os = item.key;
          break;
        }
      }

      if (os != null) {
        version = RegExp('Windows (.*)').firstMatch(os)?.group(1);
      }
    } else if (isIOS) {
      version = RegExp('OS (\d+)_(\d+)_?(\d+)?')
          .firstMatch(html.window.navigator.appVersion)
          ?.group(0);

      if (version != null) {
        version =
            '${version[1]}.${version[2]}.${version.length == 4 ? version[3] : '0'}';
      }
    } else if (isAndroid || isMacOS) {
      version = RegExp(
              '(?:Android|Mac OS|Mac OS X|MacPPC|MacIntel|Mac_PowerPC|Macintosh) ([\.\_\d]+)')
          .firstMatch(html.window.navigator.userAgent)
          ?.group(1);
    }

    return version ?? cp.Platform.unknownOperatingSystem;
  }

  @override
  String get localHostname =>
      throw UnsupportedError('Web platform is not supported');

  @override
  Map<String, String> get environment =>
      throw UnsupportedError('Web platform is not supported');

  @override
  String get executable =>
      throw UnsupportedError('Web platform is not supported');

  @override
  String get resolvedExecutable =>
      throw UnsupportedError('Web platform is not supported');

  @override
  Uri get script => Uri();

  @override
  List<String> get executableArguments =>
      throw UnsupportedError('Web platform is not supported');

  @override
  String? get packageConfig => null;

  @override
  String get version => throw UnsupportedError('Web platform is not supported');
}
