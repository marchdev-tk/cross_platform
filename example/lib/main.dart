// Copyright (c) 2021, the MarchDev Toolkit project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:cross_platform/cross_platform.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'cross_platform Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    if (Platform.isWeb) {
      return Center(child: Text('Current platform is Web'));
    } else if (Platform.isAndroid) {
      return Center(child: Text('Current platform is Android'));
    } else if (Platform.isIOS) {
      return Center(child: Text('Current platform is iOS'));
    } else {
      return Center(child: Text('Current platform is undefined'));
    }
  }
}
