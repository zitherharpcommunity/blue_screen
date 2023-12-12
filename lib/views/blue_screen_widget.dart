import 'package:blue_screen/data/stop_code.dart';
import 'package:blue_screen/utils/font.dart';
import 'package:blue_screen/utils/size.dart';
import 'package:blue_screen/views/blue_screen_type.dart';
import 'package:flutter/material.dart';

import 'blue_screen_builder.dart';

part '../widgets/windows10.dart';
part '../widgets/windows11.dart';

final class BlueScreenWidget extends StatelessWidget {
  final BlueScreenType type;
  final FlutterErrorDetails details;

  final Color? backgroundColor;
  final StopCode? stopCode;
  final String url;
  final String emoticon;
  final Duration period;
  final Duration duration;
  final bool rebuild;
  final bool repeatable;
  final void Function()? onCompleted;
  final ImageProvider? image;

  const BlueScreenWidget.withWindows10(
    this.details, {
    super.key,
    this.url = 'https://www.windows.com/stopcode',
    this.emoticon = ':(',
    this.stopCode,
    this.backgroundColor,
    this.rebuild = false,
    this.repeatable = false,
    this.onCompleted,
    this.image,
    this.period = const Duration(seconds: 1),
    this.duration = const Duration(seconds: 5),
  }) : type = BlueScreenType.windows10;

  const BlueScreenWidget.withWindows11(
    this.details, {
    super.key,
    this.url = 'https://www.windows.com/stopcode',
    this.emoticon = ':(',
    this.stopCode,
    this.backgroundColor,
    this.rebuild = false,
    this.repeatable = false,
    this.onCompleted,
    this.image,
    this.period = const Duration(seconds: 1),
    this.duration = const Duration(seconds: 5),
  }) : type = BlueScreenType.windows11;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (context) {
          switch (type) {
            case BlueScreenType.windows10:
              return _buildWithWindows10(
                context,
                details,
                url: url,
                emoticon: emoticon,
                stopCode: stopCode,
                backgroundColor: backgroundColor,
                rebuild: rebuild,
                repeatable: repeatable,
                onCompleted: onCompleted,
                image: image,
                period: period,
                duration: duration,
              );
            case BlueScreenType.windows11:
              return _buildWithWindows11(
                context,
                details,
                url: url,
                emoticon: emoticon,
                stopCode: stopCode,
                backgroundColor: backgroundColor,
                rebuild: rebuild,
                repeatable: repeatable,
                onCompleted: onCompleted,
                image: image,
                period: period,
                duration: duration,
              );
            default:
              return ErrorWidget(
                details.exception,
              );
          }
        },
      ),
    );
  }
}
