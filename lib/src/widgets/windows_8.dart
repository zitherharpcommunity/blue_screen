part of '/src/views/blue_screen_widget.dart';

/// Builds a [BlueScreenWidget] with Windows Server.
Widget _buildWithWindows8(
  BuildContext context,
  Object exception, {
  required double? width,
  required double? height,
  required bool scrollable,
  required Color? textColor,
  required Color? backgroundColor,
  required String emoticon,
  required String? fontFamily,
  required StopCode? stopCode,
  required OperatingSystem system,
  required DisplayLanguage language,
}) {
  final size = Size(
    width ?? context.width,
    height ?? context.height,
  );
  final textStyle = TextStyle(
    color: textColor ?? system.textColor,
    fontFamily: fontFamily ?? system.fontFamily,
  );
  return Container(
    width: size.width,
    height: size.height,
    color: backgroundColor ?? system.backgroundColor,
    padding: EdgeInsets.only(
      left: size.shortestSide / 3,
      top: size.shortestSide / 10,
      right: size.shortestSide / 10,
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          emoticon,
          style: textStyle.copyWith(
            fontSize: size.shortestSide / 5,
          ),
        ),
        SizedBox(
          height: size.shortestSide / 28,
        ),
        Text(
          'Your PC ran into a problem that it couldn\'t\n'
          'handle, and now it needs to restart',
          style: textStyle.copyWith(
            fontSize: size.shortestSide / 28,
          ),
        ),
        SizedBox(
          height: size.shortestSide / 40,
        ),
        Text(
          'You can search for the error online: ${stopCode?.name ?? ''}',
          style: textStyle.copyWith(
            fontSize: size.shortestSide / 48,
          ),
        ),
        if (stopCode == null)
          Expanded(
            child: SingleChildScrollView(
              physics: scrollable ? null : const NeverScrollableScrollPhysics(),
              child: Text(
                '$exception',
                style: textStyle.copyWith(
                  fontSize: size.shortestSide / 48,
                ),
              ),
            ),
          ),
      ],
    ),
  );
}
