import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:setting/isetting.dart';
import 'package:setting/setting.dart';
import 'package:setting/swech_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => swich(),
        ),
      ],
      child: Platform.isAndroid?android():IOS()
    ),
  );
}

Widget android() {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => setting(),
    },
  );
}

Widget IOS() {
  return CupertinoApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => ISetting(),
    },
  );
}
