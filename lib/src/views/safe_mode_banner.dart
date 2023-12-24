import '/src/exports/utils.dart';

/// Displays a [Banner] saying "SAFE MODE" when running in safe mode.
///
/// Does nothing in release mode.
class SafeModeBanner extends StatelessWidget {
  /// Creates a const safe mode banner.
  const SafeModeBanner({
    super.key,
    this.fontFamily,
    this.textColor,
    this.backgroundColor,
    required this.child,
  });

  /// The font family of the banner.
  final String? fontFamily;

  /// The text color of the banner.
  final Color? textColor;

  /// The background color of the banner.
  final Color? backgroundColor;

  /// The widget to show behind the banner.
  final Widget child;

  @override
  Widget build(BuildContext context) {
    Widget result = child;
    assert(() {
      final textStyle = TextStyle(
        height: 1,
        fontSize: 9,
        fontWeight: FontWeight.bold,
        fontFamily: fontFamily ?? BlueScreen.fontFamily,
        color: textColor ?? BlueScreen.backgroundColor,
      );
      result = Banner(
        message: 'SAFE MODE',
        location: BannerLocation.topEnd,
        textDirection: TextDirection.ltr,
        color: backgroundColor ?? BlueScreen.textColor,
        textStyle: textStyle,
        child: child,
      );
      return true;
    }());
    return result;
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    String message = 'disabled';
    assert(() {
      message = '"SAFE MODE"';
      return true;
    }());
    properties.add(DiagnosticsNode.message(message));
  }
}
