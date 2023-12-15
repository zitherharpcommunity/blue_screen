import '/exports/utils.dart';
import '/exports/views.dart';

/// A stateless utility widget whose [BlueScreenBuilderState.rebuild] method
/// uses its [builder] callback to create the widget's child.
final class BlueScreenBuilder extends StatefulWidget {
  /// Creates a widget that delegates its build to a [BlueScreenWidget].
  ///
  /// The [child] and [builder] argument must not be null.
  const BlueScreenBuilder({
    super.key,
    required this.child,
    required this.builder,
  });

  /// The widget below this widget in the tree.
  final Widget child;

  /// The configurable factory for [BlueScreenWidget].
  final BlueScreenWidget Function(Object exception) builder;

  @override
  State<BlueScreenBuilder> createState() => _BlueScreenBuilderState();

  /// Rebuilds the widget that builds its child.
  static void rebuild(BuildContext context) {
    return context.findAncestorStateOfType<_BlueScreenBuilderState>()?.rebuild();
  }
}

class _BlueScreenBuilderState extends State<BlueScreenBuilder> {
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

  /// Rebuild the widget that builds its child.
  void rebuild() {
    setState(() {
      key = UniqueKey();
    });
  }
}
