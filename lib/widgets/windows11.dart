part of '/views/blue_screen_widget.dart';

Widget _buildWithWindows11(
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
  required ImageProvider? image,
  required Duration period,
  required Duration duration,
  required void Function()? onCompleted,
}) {
  return Theme(
    data: ThemeData(
      fontFamily: fontFamily ?? FontFamily.segoen,
    ),
    child: Container(
      height: context.height,
      color: backgroundColor ?? Colors.black,
      padding: EdgeInsets.all(
        context.longestSide / 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            emoticon,
            style: TextStyle(
              color: Colors.white,
              fontSize: context.shortestSide / 5,
            ),
          ),
          SizedBox(
            height: context.shortestSide / 42,
          ),
          Text(
            'Your device ran into a problem and needs to restart.\n'
            'We\'re just collecting some error info, and then we\'ll restart for you.',
            style: TextStyle(
              color: Colors.white,
              fontSize: context.shortestSide / 36,
            ),
          ),
          SizedBox(
            height: context.shortestSide / 28,
          ),
          StreamBuilder(
            initialData: 0,
            stream: Stream.periodic(
              period,
              (_) {
                final tick = 100 / (duration.inSeconds / _);
                if (tick > 100) BlueScreenBuilder.of(context)?.rebuild();
                return tick;
              },
            ),
            builder: (context, snapshot) {
              final progress = snapshot.requireData.round();
              return Text(
                '$progress% complete',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: context.shortestSide / 36,
                ),
              );
            },
          ),
          SizedBox(
            height: context.shortestSide / 28,
          ),
          SizedBox(
            width: context.height / 8,
            height: context.height / 8,
            child: Wrap(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    bottom: context.shortestSide / 36,
                  ),
                  child: Image(
                    image: image ?? StopCode.image,
                    height: context.height / 8,
                  ),
                ),
                SizedBox(
                  width: context.shortestSide / 36,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'For more information about this issue and possible fixes, visit\n$url',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: context.shortestSide / 40,
                      ),
                    ),
                    SizedBox(
                      height: context.shortestSide / 48,
                    ),
                    Text(
                      'If you call a support person, give them this info:',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: context.shortestSide / 48,
                      ),
                    ),
                    Text(
                      stopCode?.name ?? '$exception',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: context.shortestSide / 48,
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
