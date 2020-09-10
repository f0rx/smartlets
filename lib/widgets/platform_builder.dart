import 'dart:io';

import 'package:flutter/material.dart';

typedef _PlatformBuilder = Widget Function(BuildContext context);

class PlatformBuilder extends StatelessWidget {
  final _PlatformBuilder ios;
  final _PlatformBuilder android;
  final _PlatformBuilder desktop;

  const PlatformBuilder({
    Key key,
    this.ios,
    this.android,
    this.desktop,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) return ios(context);
    if (Platform.isAndroid) return android(context);
    if (Platform.isWindows) return desktop(context);
    return android(context);
  }
}
