import 'package:flutter/material.dart';

import 'blue_screen_widget.dart';

final class BlueScreenBuilder extends StatefulWidget {
  const BlueScreenBuilder({
    super.key,
    required this.child,
    required this.builder,
  });

  final Widget child;
  final BlueScreenWidget Function(FlutterErrorDetails) builder;

  @override
  State<BlueScreenBuilder> createState() => BlueScreenBuilderState();

  static BlueScreenBuilderState? of(BuildContext context) {
    return context.findAncestorStateOfType<BlueScreenBuilderState>();
  }
}

class BlueScreenBuilderState extends State<BlueScreenBuilder> {
  var key = UniqueKey();

  @override
  void initState() {
    super.initState();
    ErrorWidget.builder = widget.builder;
  }

  @override
  Widget build(BuildContext context) {
    return KeyedSubtree(
      key: key,
      child: widget.child,
    );
  }

  void rebuild() {
    setState(() {
      key = UniqueKey();
    });
  }
}
