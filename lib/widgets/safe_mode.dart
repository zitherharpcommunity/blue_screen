part of '/views/blue_screen_widget.dart';

/// Runs [body] in a safe mode.
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
            name: 'blue_screen',
            error: error,
            stackTrace: stackTrace,
          );
        },
  );
}

Widget _buildSafeMode({
  required BuildContext context,
  required Object exception,
  required Color? textColor,
  required Color? backgroundColor,
  required String? fontFamily,
}) {
  return Container(
    width: context.width,
    height: context.height,
    color: backgroundColor ?? Colors.blue,
    padding: EdgeInsets.all(context.ratioSize10),
    child: Text(
      '$exception',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontFamily: fontFamily ?? FontFamily.segoe,
        color: textColor ?? context.colorScheme.onBackground,
      ),
    ),
  );
}
