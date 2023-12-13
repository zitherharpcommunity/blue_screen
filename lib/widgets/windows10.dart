part of '/views/blue_screen_widget.dart';

extension _SizeUtils on BuildContext {
  double get ratioSize5 => shortestSide / 5;
  double get ratioSize8 => shortestSide / 8;
  double get ratioSize10 => shortestSide / 10;
  double get ratioSize28 => shortestSide / 28;
  double get ratioSize36 => shortestSide / 36;
  double get ratioSize40 => shortestSide / 40;
  double get ratioSize42 => shortestSide / 42;
  double get ratioSize48 => shortestSide / 48;
}

Widget _buildWithWindows10(
  BuildContext context,
  FlutterErrorDetails details, {
  required bool rebuild,
  required bool repeatable,
  required Color? textColor,
  required Color? backgroundColor,
  required String emoticon,
  required String url,
  required String? fontFamily,
  required StopCode? stopCode,
  required ImageProvider? image,
  required Duration period,
  required Duration duration,
  required void Function()? onCompleted,
}) {
  textColor ??= Colors.white;
  return Theme(
    data: ThemeData(
      fontFamily: fontFamily ?? FontFamily.segoe,
    ),
    child: Container(
      color: backgroundColor ?? Colors.blue,
      padding: EdgeInsets.all(context.ratioSize10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            emoticon,
            style: TextStyle(
              color: textColor,
              fontSize: context.ratioSize5,
            ),
          ),
          SizedBox(
            height: context.ratioSize42,
          ),
          Text(
            'Your PC ran into a problem and needs to restart.\n'
            'We\'re just collecting some error info, and then we\'ll restart for you.',
            style: TextStyle(
              color: textColor,
              fontSize: context.ratioSize36,
            ),
          ),
          SizedBox(
            height: context.ratioSize28,
          ),
          StreamBuilder(
            initialData: 0,
            stream: Stream.periodic(
              period,
              (_) {
                final tick = 100 / (duration.inSeconds / _);
                if (tick > 100 && repeatable) {
                  onCompleted?.call();
                  if (rebuild) BlueScreenBuilder.of(context)?.rebuild();
                }
                return tick > 100 ? 100 : tick;
              },
            ),
            builder: (context, snapshot) {
              final progress = snapshot.requireData.round();
              return Text(
                '$progress% complete',
                style: TextStyle(
                  color: textColor,
                  fontSize: context.ratioSize36,
                ),
              );
            },
          ),
          SizedBox(
            height: context.ratioSize28,
          ),
          SizedBox(
            height: context.ratioSize8,
            child: Wrap(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    bottom: context.ratioSize36,
                  ),
                  child: Image(
                    image: image ??
                        const NetworkImage(
                          'https://upload.wikimedia.org/wikipedia/commons/2/2f/Rickrolling_QR_code.png',
                        ),
                    height: context.ratioSize8,
                  ),
                ),
                SizedBox(
                  width: context.ratioSize36,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'For more information about this issue and possible fixes, visit $url',
                      style: TextStyle(
                        color: textColor,
                        fontSize: context.ratioSize40,
                      ),
                    ),
                    SizedBox(
                      height: context.ratioSize36,
                    ),
                    Text(
                      'If you call a support person, give them this info:',
                      style: TextStyle(
                        color: textColor,
                        fontSize: context.ratioSize48,
                      ),
                    ),
                    Text(
                      stopCode?.name ?? '${details.exception}',
                      style: TextStyle(
                        color: textColor,
                        fontSize: context.ratioSize48,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
