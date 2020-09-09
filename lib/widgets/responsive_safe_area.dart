import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smartlets/widgets/widgets.dart';

typedef _ResponsiveBuilder = Widget Function(BuildContext context, QueryData query);

class ResponsiveSafeArea extends StatelessWidget {
  final _ResponsiveBuilder _builder;

  const ResponsiveSafeArea({Key key, @required _ResponsiveBuilder builder})
      : _builder = builder,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: LayoutBuilder(
        builder: (context, constraints) => _builder(
          context,
          QueryData(
            size: constraints.biggest,
            orientation: MediaQuery.of(context).orientation,
            brightness: MediaQuery.of(context).platformBrightness,
          ),
        ),
      ),
    );
  }
}
