part of '/src/views/blue_screen_widget.dart';

/// Runs [body] in its own a safe mode.
///
/// The [onError] function is used both to handle asynchronous errors
/// by overriding [ZoneSpecification.handleUncaughtError] in `SafeMode`,
/// if any, and to handle errors thrown synchronously by the call to [body].
///
/// If an error occurs synchronously in [body],
/// then throwing in the [onError] handler
/// makes the call to [runZonedGuarded] throw that error,
/// and otherwise the call to [runZonedGuarded] returns `void`.
void runSafeMode(
  void Function() body, {
  void Function(Object error, StackTrace stackTrace)? onError,
}) {
  return runZonedGuarded(
    body,
    onError ??
        (error, stackTrace) {
          log(
            '$error',
            name: 'SAFE MODE',
            error: error,
            stackTrace: stackTrace,
          );
        },
  );
}

/// Builds a [BlueScreenWidget] in safe mode.
Widget _buildSafeMode(
  BuildContext context,
  Object exception, {
  required double? width,
  required double? height,
  required bool scrollable,
  required Color? textColor,
  required Color? backgroundColor,
  required String? fontFamily,
}) {
  width = width ?? context.width;
  height = height ?? context.height;
  final shortestSide = min(width, height);
  return Container(
    width: width,
    height: height,
    color: backgroundColor ?? BlueScreen.backgroundColor,
    padding: EdgeInsets.symmetric(
      vertical: shortestSide / 5,
      horizontal: shortestSide / 10,
    ),
    child: SingleChildScrollView(
      physics: scrollable ? null : const NeverScrollableScrollPhysics(),
      child: Text(
        '$exception',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: textColor ?? BlueScreen.textColor,
          fontFamily: fontFamily ?? BlueScreen.fontFamily,
        ),
      ),
    ),
  );
}
