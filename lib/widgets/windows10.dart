part of '/views/blue_screen_widget.dart';

Widget _buildWithWindows10(
  BuildContext context,
  FlutterErrorDetails details, {
  ImageProvider? image,
  StopCode? stopCode,
  Color? backgroundColor,
  bool rebuild = false,
  bool repeatable = false,
  void Function()? onCompleted,
  String? fontFamily,
  String emoticon = ':(',
  String url = 'https://www.windows.com/stopcode',
  Duration period = const Duration(seconds: 1),
  Duration duration = const Duration(seconds: 10),
}) {
  return Theme(
    data: ThemeData(
      fontFamily: fontFamily ?? FontFamily.segoe,
    ),
    child: Container(
      color: backgroundColor ?? Colors.blue,
      padding: EdgeInsets.all(context.shortestSide / 10),
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
            'Your PC ran into a problem and needs to restart.\n'
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
                    image: image ??
                        const NetworkImage(
                          'https://upload.wikimedia.org/wikipedia/commons/2/2f/Rickrolling_QR_code.png',
                        ),
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
                      'For more information about this issue and possible fixes, visit $url',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: context.shortestSide / 40,
                      ),
                    ),
                    SizedBox(
                      height: context.shortestSide / 36,
                    ),
                    Text(
                      'If you call a support person, give them this info:',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: context.shortestSide / 48,
                      ),
                    ),
                    Text(
                      stopCode?.name ?? '${details.exception}',
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
