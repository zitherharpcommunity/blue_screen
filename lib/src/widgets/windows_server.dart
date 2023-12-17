part of '/src/views/blue_screen_widget.dart';

/// Builds a [BlueScreenWidget] with Windows Server.
Widget _buildWithWindowsServer(
  BuildContext context,
  Object exception, {
  required double? width,
  required double? height,
  required bool rebuild,
  required bool repeatable,
  required bool scrollable,
  required Color? textColor,
  required Color? backgroundColor,
  required String? fontFamily,
  required StopCode? stopCode,
  required OperatingSystem system,
  required DisplayLanguage language,
  required Duration period,
  required Duration duration,
  required void Function()? onCompleted,
}) {
  final textStyle = TextStyle(
    color: textColor ?? system.textColor,
    fontFamily: fontFamily ?? system.fontFamily,
  );
  return Container(
    width: width ?? context.width,
    height: height ?? context.height,
    color: backgroundColor ?? system.backgroundColor,
    padding: EdgeInsets.only(
      top: context.shortestSide10,
      left: context.shortestSide2,
      right: context.shortestSide10,
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
          height: context.shortestSide10,
        ),
        StreamBuilder(
          initialData: 0,
          stream: Stream.periodic(
            period,
            (tick) {
              final progress = 100 / (duration.inSeconds / tick);
              if (progress > 100 && repeatable) {
                onCompleted?.call();
                if (rebuild) BlueScreenBuilder.rebuild(context);
              }
              return progress > 100 ? 100 : progress;
            },
          ),
          builder: (context, snapshot) {
            final progress = snapshot.requireData.round();
            return Text(
              'Your PC ran into a problem and needs to restart.\n'
              'We\'re just collecting some error info, and then we\'ll restart for you. ($progress% complete)',
              style: textStyle.copyWith(
                fontSize: context.shortestSide28,
              ),
            );
          },
        ),
        SizedBox(
          height: context.shortestSide40,
        ),
        Text(
          'If you\'d like to know more, you can search online later for this error: ${stopCode?.name ?? ''}',
          style: textStyle.copyWith(
            fontSize: context.shortestSide48,
          ),
        ),
        if (stopCode == null)
          Expanded(
            child: SingleChildScrollView(
              physics: scrollable ? null : const NeverScrollableScrollPhysics(),
              child: Text(
                '$exception',
                style: textStyle.copyWith(
                  fontSize: context.shortestSide48,
                ),
              ),
            ),
          ),
      ],
    ),
  );
}
