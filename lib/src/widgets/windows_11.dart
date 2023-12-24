part of '/src/views/blue_screen_widget.dart';

/// Builds a [BlueScreenWidget] with Windows 11.
Widget _buildWithWindows11(
  BuildContext context,
  Object exception, {
  required double? width,
  required double? height,
  required bool rebuild,
  required bool repeatable,
  required Color? textColor,
  required Color? backgroundColor,
  required String emoticon,
  required String url,
  required String? fontFamily,
  required StopCode? stopCode,
  required ImageProvider? image,
  required OperatingSystem system,
  required DisplayLanguage language,
  required Duration period,
  required Duration duration,
  required void Function()? onCompleted,
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
    width: width ?? size.width,
    height: height ?? size.height,
    color: backgroundColor ?? system.backgroundColor,
    padding: EdgeInsets.all(size.shortestSide/10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          emoticon,
          style: textStyle.copyWith(
            fontSize: size.shortestSide/5,
          ),
        ),
        SizedBox(
          height: size.shortestSide/28,
        ),
        Text(
          'Your device ran into a problem and needs to restart.\n'
          'We\'re just collecting some error info, and then we\'ll restart for you.',
          style: textStyle.copyWith(
            fontSize: size.shortestSide/36,
          ),
        ),
        SizedBox(
          height: size.shortestSide/28,
        ),
        StreamBuilder(
          initialData: 0,
          stream: Stream.periodic(
            period,
            (tick) {
              final progress = 100 / (duration.inSeconds / tick);
              if (progress > 100) BlueScreenBuilder.rebuild(context);
              return progress;
            },
          ),
          builder: (context, snapshot) {
            final progress = snapshot.requireData.round();
            return Text(
              '$progress% complete',
              style: textStyle.copyWith(
                fontSize: size.shortestSide/36,
              ),
            );
          },
        ),
        SizedBox(
          height: size.shortestSide / 28,
        ),
        SizedBox(
          height: size.shortestSide/5,
          child: Wrap(
            children: [
              if (image != null)
                Padding(
                  padding: EdgeInsets.only(
                    bottom: size.shortestSide/36,
                  ),
                  child: Image(
                    image: image,
                    height: size.shortestSide/5,
                  ),
                ),
              SizedBox(
                width: size.shortestSide/36,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'For more information about this issue and possible fixes, visit\n$url',
                    style: textStyle.copyWith(
                      fontSize: size.shortestSide/40,
                    ),
                  ),
                  SizedBox(
                    height: size.shortestSide/28,
                  ),
                  Text(
                    'If you call a support person, give them this info:',
                    style: textStyle.copyWith(
                      fontSize: size.shortestSide/48,
                    ),
                  ),
                  Text(
                    stopCode == null
                        ? '$exception'
                        : 'Stop code: ${stopCode.name}',
                    style: textStyle.copyWith(
                      fontSize: size.shortestSide/48,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
