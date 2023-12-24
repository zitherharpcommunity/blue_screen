import '/src/exports/utils.dart';
import '/src/exports/views.dart';

/// A stateless utility widget whose built in a safe mode.
class SafeModeBuilder extends StatelessWidget {
  /// Creates a widget that delegates its build in a safe mode.
  ///
  /// The [builder] and [creator] argument must not be null.
  ///
  /// If [enable] is true, the [builder] will be called in a safe mode.
  const SafeModeBuilder({
    super.key,
    this.enable = kReleaseMode,
    this.showSafeModeBanner = kDebugMode,
    required this.builder,
    required this.creator,
  });

  /// If true, the [builder] will be called in a safe mode.
  final bool enable;

  /// Turns on a little "SAFE MODE" banner in safe mode
  /// to indicate that the app is in safe mode.
  ///
  /// This is on by default (in debug mode), to turn it off,
  /// set the constructor argument to false.
  ///
  /// In release mode or [enable] is `false`, this has no effect.
  final bool showSafeModeBanner;

  /// Called to obtain the child widget.
  ///
  /// This function is called whenever this widget is included in its parent's
  /// build and the old widget (if any) that it synchronizes with has a distinct
  /// object identity. Typically the parent's build method will construct
  /// a new tree of widgets and so a new Builder child will not be [identical]
  /// to the corresponding old one.
  final Widget Function(BuildContext context) builder;

  /// Called to obtain the [Widget].
  final Widget Function(Object exception) creator;

  @override
  Widget build(BuildContext context) {
    Widget child = builder(context);
    if (enable) {
      try {
        if (showSafeModeBanner) {
          child = SafeModeBanner(
            child: child,
          );
        }
        return child;
      } catch (exception) {
        return creator(exception);
      }
    }
    return child;
  }
}
