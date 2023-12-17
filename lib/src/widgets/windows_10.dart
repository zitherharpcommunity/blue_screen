part of '/src/views/blue_screen_widget.dart';

Widget _buildWithWindows10(
  BuildContext context,
  Object exception, {
  required bool rebuild,
  required bool repeatable,
  required Color? textColor,
  required Color? backgroundColor,
  required String emoticon,
  required String url,
  required String? fontFamily,
  required StopCode? stopCode,
  required OperatingSystem system,
  required DisplayLanguage language,
  required ImageProvider? image,
  required Duration period,
  required Duration duration,
  required void Function()? onCompleted,
}) {
  final textStyle = TextStyle(
    color: textColor ?? system.textColor,
    fontFamily: fontFamily ?? system.fontFamily,
  );
  return Container(
    color: backgroundColor ?? system.backgroundColor,
    padding: EdgeInsets.all(context.shortestSide10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
          height: context.shortestSide10,
        ),
        Text(
          emoticon,
          style: textStyle.copyWith(
            fontSize: context.shortestSide5,
          ),
        ),
        SizedBox(
          height: context.shortestSide28,
        ),
        Text(
          'Your PC ran into a problem and needs to restart.\n'
          'We\'re just collecting some error info, and then we\'ll restart for you.',
          style: textStyle.copyWith(
            fontSize: context.shortestSide36,
          ),
        ),
        SizedBox(
          height: context.shortestSide28,
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
              '$progress% complete',
              style: textStyle.copyWith(
                fontSize: context.shortestSide36,
              ),
            );
          },
        ),
        SizedBox(
          height: context.shortestSide28,
        ),
        SizedBox(
          height: context.shortestSide8,
          child: Wrap(
            children: [
              if (image != null)
                Padding(
                  padding: EdgeInsets.only(
                    bottom: context.shortestSide36,
                  ),
                  child: Image(
                    image: image,
                    height: context.shortestSide8,
                  ),
                ),
              SizedBox(
                width: context.shortestSide36,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'For more information about this issue and possible fixes, visit $url',
                    style: textStyle.copyWith(
                      fontSize: context.shortestSide40,
                    ),
                  ),
                  SizedBox(
                    height: context.shortestSide36,
                  ),
                  Text(
                    'If you call a support person, give them this info:',
                    style: textStyle.copyWith(
                      fontSize: context.shortestSide48,
                    ),
                  ),
                  Text(
                    stopCode == null
                        ? '$exception'
                        : 'Stop code: ${stopCode.name}',
                    style: textStyle.copyWith(
                      fontSize: context.shortestSide48,
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
